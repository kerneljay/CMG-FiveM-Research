#!/usr/bin/env python3
"""Decrypt CMGP-wrapped config files from the CMG Framework FiveM resource.

Format:  "CMGP" magic (4 bytes) + keystream-shifted base64 text.
Key:     derived only from the file's path relative to cfg/ (joaat hash).

Usage:   cmgp_decrypt.py <cfg_dir> <out_dir>
"""
import base64
import os
import sys


def joaat(s: str) -> int:
    """GTA/FiveM GetHashKey — Jenkins one-at-a-time over the lowercased string."""
    h = 0
    for c in s.lower().encode():
        h = (h + c) & 0xFFFFFFFF
        h = (h + (h << 10)) & 0xFFFFFFFF
        h ^= h >> 6
    h = (h + (h << 3)) & 0xFFFFFFFF
    h ^= h >> 11
    h = (h + (h << 15)) & 0xFFFFFFFF
    return h


def decrypt(data: bytes, relpath: str) -> bytes:
    if data[:4] != b"CMGP":
        return data
    h = joaat(relpath)
    b64 = bytearray()
    for i in range(5, len(data) + 1):  # 1-based index over the whole file
        key = (((h >> ((i % 8) * 4)) & 15) + i) % 63
        b64.append(data[i - 1] - key)
    return base64.b64decode(bytes(b64))


def main() -> None:
    src, dst = sys.argv[1], sys.argv[2]
    for root, _, files in os.walk(src):
        for name in files:
            if not name.endswith(".lua"):
                continue
            path = os.path.join(root, name)
            rel = os.path.relpath(path, src)
            out = os.path.join(dst, rel)
            os.makedirs(os.path.dirname(out), exist_ok=True)
            with open(out, "wb") as fh:
                fh.write(decrypt(open(path, "rb").read(), rel))
            print(rel)


if __name__ == "__main__":
    main()