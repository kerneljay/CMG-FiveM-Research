#!/usr/bin/env python3
"""Strict Rockstar RBF0 -> XML decoder with structural verification.

Designed for GTA V/FiveM RBF metadata, including weaponanimations.meta.
The RBF stream itself supplies the primitive types. `key`, `ref`, `content`,
and `type` RbfString fields are emitted as XML attributes; byte payloads are
emitted as NUL-terminated ASCII text unless an explicit array content type is
present.
"""
from __future__ import annotations

import argparse
import math
import struct
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Iterable
from xml.etree import ElementTree as ET

MAGIC = b"RBF0"
END = 0xFFFF
BYTES = 0xFFFD

@dataclass(slots=True)
class Node:
    name: str | None
    kind: str
    value: Any = None
    children: list["Node"] = field(default_factory=list)
    offset: int = 0

class RbfError(ValueError):
    pass

class Reader:
    def __init__(self, data: bytes):
        self.data = data
        self.pos = 0
    def read(self, size: int) -> bytes:
        if size < 0 or self.pos + size > len(self.data):
            raise RbfError(f"Unexpected EOF at 0x{self.pos:X}; requested {size} bytes")
        out = self.data[self.pos:self.pos + size]
        self.pos += size
        return out
    def u16(self) -> int: return struct.unpack("<H", self.read(2))[0]
    def i16(self) -> int: return struct.unpack("<h", self.read(2))[0]
    def i32(self) -> int: return struct.unpack("<i", self.read(4))[0]
    def u32(self) -> int: return struct.unpack("<I", self.read(4))[0]
    def f32(self) -> float: return struct.unpack("<f", self.read(4))[0]


def _ascii(raw: bytes, what: str, offset: int) -> str:
    try:
        return raw.decode("ascii")
    except UnicodeDecodeError as exc:
        raise RbfError(f"Non-ASCII {what} at 0x{offset:X}") from exc


def parse_rbf(data: bytes) -> Node:
    r = Reader(data)
    if r.read(4) != MAGIC:
        raise RbfError("Input is not an RBF0 file")

    descriptors: list[tuple[str, int]] = []
    stack: list[Node] = []
    current: Node | None = None
    root: Node | None = None

    while r.pos < len(data):
        record_offset = r.pos
        tag = r.u16()

        if tag == END:
            if stack:
                current = stack.pop()
                continue
            if root is None:
                raise RbfError("RBF ended before a root structure was read")
            if r.pos != len(data):
                raise RbfError(f"Trailing data after root at 0x{r.pos:X}")
            return root

        if tag == BYTES:
            if current is None:
                raise RbfError(f"Byte payload outside a structure at 0x{record_offset:X}")
            length = r.i32()
            current.children.append(Node(None, "bytes", r.read(length), offset=record_offset))
            continue

        descriptor_index = tag & 0x0FFF
        record_type = (tag >> 8) & 0xF0

        if descriptor_index == len(descriptors):
            name_length = r.i16()
            if name_length < 0:
                raise RbfError(f"Negative descriptor length at 0x{record_offset:X}")
            name = _ascii(r.read(name_length), "descriptor", record_offset)
            descriptors.append((name, record_type))
        elif descriptor_index < len(descriptors):
            name = descriptors[descriptor_index][0]
        else:
            raise RbfError(
                f"Descriptor index {descriptor_index} skips table size {len(descriptors)} "
                f"at 0x{record_offset:X}"
            )

        if record_type == 0x00:  # structure
            unknown = r.read(6)
            node = Node(name, "struct", unknown, offset=record_offset)
            if current is None:
                if root is not None:
                    raise RbfError("Multiple root structures")
                root = node
            else:
                current.children.append(node)
                stack.append(current)
            current = node
        elif current is None:
            raise RbfError(f"Primitive outside a structure at 0x{record_offset:X}")
        elif record_type == 0x10:
            current.children.append(Node(name, "u32", r.u32(), offset=record_offset))
        elif record_type == 0x20:
            current.children.append(Node(name, "bool", True, offset=record_offset))
        elif record_type == 0x30:
            current.children.append(Node(name, "bool", False, offset=record_offset))
        elif record_type == 0x40:
            current.children.append(Node(name, "float", r.f32(), offset=record_offset))
        elif record_type == 0x50:
            current.children.append(Node(name, "float3", (r.f32(), r.f32(), r.f32()), offset=record_offset))
        elif record_type == 0x60:
            length = r.i16()
            if length < 0:
                raise RbfError(f"Negative string length at 0x{record_offset:X}")
            current.children.append(Node(name, "string", _ascii(r.read(length), "string", record_offset), offset=record_offset))
        else:
            raise RbfError(f"Unsupported RBF type 0x{record_type:02X} at 0x{record_offset:X}")

    raise RbfError("Unexpected EOF before root terminator")


def float_text(value: float) -> str:
    if not math.isfinite(value):
        raise RbfError(f"Non-finite float value: {value!r}")
    # Nine significant digits are sufficient to round-trip every IEEE-754 float32.
    text = format(value, ".9g")
    if "e" not in text.lower() and "." not in text:
        text += ".0"
    return text


def _content_type(node: Node) -> str | None:
    for child in node.children:
        if child.kind == "string" and child.name == "content":
            return child.value
    return None


def _decode_bytes(node: Node, payload: bytes) -> str:
    content = _content_type(node)
    if content == "char_array":
        return "\n" + "\n".join(str(v) for v in payload) + "\n"
    if content == "short_array":
        if len(payload) % 2:
            raise RbfError(f"Odd short_array payload length at 0x{node.offset:X}")
        values = struct.unpack("<" + "H" * (len(payload) // 2), payload)
        return "\n" + "\n".join(str(v) for v in values) + "\n"
    if content is not None:
        raise RbfError(f"Unsupported byte content type {content!r} at 0x{node.offset:X}")
    if not payload.endswith(b"\0"):
        raise RbfError(f"Text payload is not NUL-terminated at 0x{node.offset:X}")
    return _ascii(payload[:-1], "text payload", node.offset)


def node_to_xml(node: Node, parent: ET.Element | None = None) -> ET.Element:
    if node.kind != "struct" or node.name is None:
        raise RbfError("XML root must be a named structure")
    elem = ET.SubElement(parent, node.name) if parent is not None else ET.Element(node.name)

    # XML attributes must be written on the opening tag, regardless of their
    # physical position in the RBF child stream.
    attribute_string_names = {"content", "type", "key", "ref"}
    for child in node.children:
        if child.kind == "string" and child.name in attribute_string_names:
            elem.set(child.name, child.value)

    for child in node.children:
        if child.kind == "string":
            if child.name in attribute_string_names:
                continue
            ET.SubElement(elem, child.name, {"value": child.value})
            continue
        if child.kind == "bytes":
            text = _decode_bytes(node, child.value)
            elem.text = (elem.text or "") + text
        elif child.kind == "struct":
            node_to_xml(child, elem)
        elif child.kind == "u32":
            ET.SubElement(elem, child.name, {"value": f"0x{child.value:08X}"})
        elif child.kind == "bool":
            ET.SubElement(elem, child.name, {"value": "true" if child.value else "false"})
        elif child.kind == "float":
            ET.SubElement(elem, child.name, {"value": float_text(child.value)})
        elif child.kind == "float3":
            x, y, z = child.value
            ET.SubElement(elem, child.name, {"x": float_text(x), "y": float_text(y), "z": float_text(z)})
        else:
            raise RbfError(f"Unhandled node kind {child.kind!r}")
    return elem


def iter_nodes(node: Node) -> Iterable[Node]:
    yield node
    for child in node.children:
        if child.kind == "struct":
            yield from iter_nodes(child)
        else:
            yield child


def verify_xml_against_tree(root: Node, xml_root: ET.Element) -> list[str]:
    """Verify every RBF value made it into the corresponding XML node."""
    errors: list[str] = []

    def check(node: Node, elem: ET.Element, path: str) -> None:
        if elem.tag != node.name:
            errors.append(f"{path}: tag {elem.tag!r} != {node.name!r}")
            return
        attribute_string_names = {"content", "type", "key", "ref"}
        attrs = {c.name: c.value for c in node.children if c.kind == "string" and c.name in attribute_string_names}
        for name, value in attrs.items():
            if elem.get(name) != value:
                errors.append(f"{path}: attribute {name!r} mismatch")
        expected_children = [
            c for c in node.children
            if c.kind != "bytes" and not (c.kind == "string" and c.name in attribute_string_names)
        ]
        actual_children = list(elem)
        if len(expected_children) != len(actual_children):
            errors.append(f"{path}: child count {len(actual_children)} != {len(expected_children)}")
            return
        byte_children = [c for c in node.children if c.kind == "bytes"]
        expected_text = "".join(_decode_bytes(node, c.value) for c in byte_children)
        if expected_text and (elem.text or "") != expected_text:
            errors.append(f"{path}: text payload mismatch")
        for index, (child, child_elem) in enumerate(zip(expected_children, actual_children)):
            child_path = f"{path}/{child.name}[{index}]"
            if child.kind == "struct":
                check(child, child_elem, child_path)
            elif child_elem.tag != child.name:
                errors.append(f"{child_path}: primitive tag mismatch")
            elif child.kind == "string" and child_elem.get("value") != child.value:
                errors.append(f"{child_path}: string mismatch")
            elif child.kind == "u32" and child_elem.get("value") != f"0x{child.value:08X}":
                errors.append(f"{child_path}: uint mismatch")
            elif child.kind == "bool" and child_elem.get("value") != ("true" if child.value else "false"):
                errors.append(f"{child_path}: boolean mismatch")
            elif child.kind == "float":
                try:
                    if struct.pack("<f", float(child_elem.get("value"))) != struct.pack("<f", child.value):
                        errors.append(f"{child_path}: float32 round-trip mismatch")
                except Exception:
                    errors.append(f"{child_path}: invalid float")
            elif child.kind == "float3":
                for axis, original in zip(("x", "y", "z"), child.value):
                    try:
                        if struct.pack("<f", float(child_elem.get(axis))) != struct.pack("<f", original):
                            errors.append(f"{child_path}: {axis} float32 round-trip mismatch")
                    except Exception:
                        errors.append(f"{child_path}: invalid {axis} float")
    check(root, xml_root, f"/{root.name}")
    return errors


def decode_file(input_path: Path, output_path: Path, *, indent: bool = True) -> dict[str, int]:
    data = input_path.read_bytes()
    root = parse_rbf(data)
    xml_root = node_to_xml(root)
    errors = verify_xml_against_tree(root, xml_root)
    if errors:
        raise RbfError("Verification failed:\n" + "\n".join(errors[:20]))
    if indent:
        ET.indent(xml_root, space="  ")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    ET.ElementTree(xml_root).write(
        output_path,
        encoding="UTF-8",
        xml_declaration=True,
        short_empty_elements=True,
    )
    ET.parse(output_path)
    counts: dict[str, int] = {}
    for node in iter_nodes(root):
        counts[node.kind] = counts.get(node.kind, 0) + 1
    return counts


def is_rbf0(path: Path) -> bool:
    try:
        with path.open("rb") as handle:
            return handle.read(4) == MAGIC
    except OSError:
        return False


def output_name(path: Path) -> str:
    # Keep the normal FiveM filename when possible. If an input is named
    # weapons(1).meta, produce weapons.meta rather than weapons(1).meta.
    import re
    stem = re.sub(r"\s*\(\d+\)$", "", path.stem)
    return stem + path.suffix


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Strict GTA V/FiveM RBF0 .meta to formatted XML decoder"
    )
    parser.add_argument("input", type=Path, help="RBF0 .meta file or folder")
    parser.add_argument("output", type=Path, nargs="?", help="Output file or folder")
    parser.add_argument("--recursive", action="store_true", help="Scan subfolders")
    parser.add_argument("--overwrite", action="store_true", help="Replace existing outputs")
    parser.add_argument("--no-indent", action="store_true", help="Do not pretty-print XML")
    args = parser.parse_args()

    source = args.input.resolve()
    if not source.exists():
        parser.error(f"Input does not exist: {source}")

    if source.is_file():
        destination = args.output.resolve() if args.output else source.with_name(output_name(source))
        if destination == source:
            destination = source.with_name(source.stem + "_decoded" + source.suffix)
        if destination.exists() and not args.overwrite:
            parser.error(f"Output already exists: {destination} (use --overwrite)")
        counts = decode_file(source, destination, indent=not args.no_indent)
        print(f"[OK] {source.name} -> {destination}")
        print("     " + ", ".join(f"{k}={v}" for k, v in sorted(counts.items())))
        return 0

    destination_root = (args.output or source.with_name(source.name + "_decoded")).resolve()
    pattern = "**/*.meta" if args.recursive else "*.meta"
    candidates = sorted(path for path in source.glob(pattern) if path.is_file())
    rbf_files = [path for path in candidates if is_rbf0(path)]
    if not rbf_files:
        print(f"No RBF0 .meta files found in {source}")
        return 1

    succeeded = 0
    failed = 0
    for input_path in rbf_files:
        relative_parent = input_path.parent.relative_to(source)
        output_path = destination_root / relative_parent / output_name(input_path)
        if output_path.exists() and not args.overwrite:
            print(f"[SKIP] {input_path}: output exists ({output_path})")
            continue
        try:
            counts = decode_file(input_path, output_path, indent=not args.no_indent)
            succeeded += 1
            total = sum(counts.values())
            print(f"[OK]   {input_path.relative_to(source)} -> {output_path.relative_to(destination_root)} ({total} nodes)")
        except Exception as exc:
            failed += 1
            print(f"[FAIL] {input_path.relative_to(source)}: {exc}")

    print(f"\nFinished: {succeeded} decoded, {failed} failed, {len(rbf_files)} RBF0 file(s) found")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())