#!/usr/bin/env python3
"""Decrypt CMGP-wrapped JSON configuration files.

The encryption key is derived from each file's path relative to cfg/.

Example:
    python decrypt_cmg_json.py ^
        F:\cmg\cmg\prod\cfg\vehicles ^
        F:\cmg\decrypted\vehicles ^
        --key-prefix vehicles
"""

import argparse
import base64
import binascii
import os
import sys


def joaat(value: str) -> int:
    """GTA/FiveM Jenkins one-at-a-time hash over lowercase text."""
    hash_value = 0

    for character in value.lower().encode("utf-8"):
        hash_value = (hash_value + character) & 0xFFFFFFFF
        hash_value = (hash_value + (hash_value << 10)) & 0xFFFFFFFF
        hash_value ^= hash_value >> 6

    hash_value = (hash_value + (hash_value << 3)) & 0xFFFFFFFF
    hash_value ^= hash_value >> 11
    hash_value = (hash_value + (hash_value << 15)) & 0xFFFFFFFF

    return hash_value


def normalise_key_path(path: str) -> str:
    """Use forward slashes consistently for the path-derived key."""
    return path.replace("\\", "/").lstrip("./")


def decrypt(data: bytes, key_path: str) -> bytes:
    """Decrypt one CMGP-wrapped file."""
    if not data.startswith(b"CMGP"):
        return data

    key_path = normalise_key_path(key_path)
    path_hash = joaat(key_path)
    encoded_data = bytearray()

    # Original algorithm uses one-based positions over the complete file.
    # The encrypted payload begins at position 5, immediately after "CMGP".
    for position in range(5, len(data) + 1):
        key = (
            ((path_hash >> ((position % 8) * 4)) & 0x0F)
            + position
        ) % 63

        encoded_data.append((data[position - 1] - key) & 0xFF)

    try:
        return base64.b64decode(
            bytes(encoded_data),
            validate=True,
        )
    except (ValueError, binascii.Error) as error:
        raise ValueError(
            f"Invalid decrypted base64 using key path: {key_path}"
        ) from error


def build_key_path(relative_path: str, key_prefix: str) -> str:
    relative_path = normalise_key_path(relative_path)
    key_prefix = normalise_key_path(key_prefix)

    if key_prefix:
        return f"{key_prefix.rstrip('/')}/{relative_path}"

    return relative_path


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Decrypt CMGP-wrapped JSON files."
    )

    parser.add_argument(
        "source_directory",
        help="Folder containing encrypted JSON files.",
    )

    parser.add_argument(
        "output_directory",
        help="Folder where decrypted JSON files will be written.",
    )

    parser.add_argument(
        "--key-prefix",
        default="",
        help=(
            "Path between cfg/ and the source directory. "
            "For cfg/vehicles, use --key-prefix vehicles."
        ),
    )

    args = parser.parse_args()

    source_directory = os.path.abspath(args.source_directory)
    output_directory = os.path.abspath(args.output_directory)

    if not os.path.isdir(source_directory):
        print(
            f"Source directory does not exist: {source_directory}",
            file=sys.stderr,
        )
        raise SystemExit(1)

    if source_directory == output_directory:
        print(
            "Error: use a separate output directory to avoid overwriting "
            "the encrypted originals.",
            file=sys.stderr,
        )
        raise SystemExit(1)

    processed_count = 0
    failed_count = 0
    skipped_count = 0

    for root, _, filenames in os.walk(source_directory):
        for filename in filenames:
            if not filename.lower().endswith(".json"):
                continue

            source_path = os.path.join(root, filename)
            relative_path = os.path.relpath(
                source_path,
                source_directory,
            )

            key_path = build_key_path(
                relative_path,
                args.key_prefix,
            )

            output_path = os.path.join(
                output_directory,
                relative_path,
            )

            os.makedirs(
                os.path.dirname(output_path),
                exist_ok=True,
            )

            try:
                with open(source_path, "rb") as source_file:
                    encrypted_data = source_file.read()

                if not encrypted_data.startswith(b"CMGP"):
                    print(f"Skipped, not CMGP: {relative_path}")
                    skipped_count += 1
                    continue

                decrypted_data = decrypt(
                    encrypted_data,
                    key_path,
                )

                with open(output_path, "wb") as output_file:
                    output_file.write(decrypted_data)

                print(
                    f"Decrypted: {relative_path} "
                    f"(key path: {key_path})"
                )

                processed_count += 1

            except Exception as error:
                print(
                    f"Failed: {relative_path}: {error}",
                    file=sys.stderr,
                )
                failed_count += 1

    print()
    print(f"Decrypted: {processed_count}")
    print(f"Skipped:   {skipped_count}")
    print(f"Failed:    {failed_count}")


if __name__ == "__main__":
    main()