#!/usr/bin/env python3
"""
Remove FXAP header bytes from Lua binary files.

Recursively walk through ALL subfolders of the given root directory,
find every .lua file, strip the first 4 bytes if they match b'FXAP',
and save the result in-place.
"""

import os
import sys

def remove_fxap_header(file_path):
    """
    Remove the FXAP header (4 bytes) from a file if it exists.
    Returns True if the header was removed, False otherwise.
    """
    try:
        with open(file_path, 'rb') as f:
            data = f.read()
    except (IOError, OSError) as e:
        print(f"  Error reading {file_path}: {e}")
        return False

    if not data.startswith(b'FXAP'):
        return False

    new_data = data[4:]

    try:
        with open(file_path, 'wb') as f:
            f.write(new_data)
    except (IOError, OSError) as e:
        print(f"  Error writing {file_path}: {e}")
        return False

    return True

def main():
    if len(sys.argv) > 1:
        root_dir = sys.argv[1]
    else:
        root_dir = os.getcwd()

    if not os.path.isdir(root_dir):
        print(f"Error: '{root_dir}' is not a valid directory.", file=sys.stderr)
        sys.exit(1)

    print(f"Scanning recursively from: {root_dir}\n")

    total_processed = 0
    total_removed = 0

    # Recursively walk through ALL subdirectories
    for dirpath, dirnames, filenames in os.walk(root_dir):
        # Optional: filter out hidden or unwanted dirs (uncomment if needed)
        # dirnames[:] = [d for d in dirnames if not d.startswith('.')]

        # Look for .lua files in the current directory
        lua_files = [f for f in filenames if f.lower().endswith('.lua')]
        if not lua_files:
            continue

        # Show relative path from root for clarity
        rel_path = os.path.relpath(dirpath, root_dir)
        if rel_path == '.':
            rel_path = 'root'
        print(f"📁 {rel_path} ({len(lua_files)} .lua file(s))")

        for filename in lua_files:
            file_path = os.path.join(dirpath, filename)
            total_processed += 1
            print(f"    {filename} ... ", end='', flush=True)

            if remove_fxap_header(file_path):
                print("✅ FXAP removed")
                total_removed += 1
            else:
                print("➖ No FXAP header or error")

    print(f"\nDone. Processed {total_processed} .lua file(s), removed FXAP from {total_removed}.")

if __name__ == '__main__':
    main()