import os
import sys
import subprocess
import winreg
import glob
import ctypes

# ----------------------------------------------------------------------
# Admin Check
# ----------------------------------------------------------------------
def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False

# ----------------------------------------------------------------------
# Get current user's SID using `whoami /user`
# ----------------------------------------------------------------------
def get_current_sid():
    try:
        output = subprocess.check_output(
            ["whoami", "/user"], 
            encoding='utf-8', 
            shell=True
        )
        lines = output.strip().split('\n')
        for line in lines:
            if 'S-1-5-' in line:
                parts = line.split()
                for part in parts:
                    if part.startswith('S-1-5-'):
                        return part
    except Exception as e:
        print(f"[!] Failed to get SID: {e}")
    return None

# ----------------------------------------------------------------------
# Clear BAM Registry Entries
# ----------------------------------------------------------------------
def clear_bam(sid):
    base_paths = [
        r"SYSTEM\CurrentControlSet\Services\bam\UserSettings",
        r"SYSTEM\CurrentControlSet\Services\bam\State\UserSettings"
    ]
    total_deleted = 0

    for base in base_paths:
        key_path = f"{base}\\{sid}"
        try:
            # Open with read + write permissions
            key = winreg.OpenKey(
                winreg.HKEY_LOCAL_MACHINE, 
                key_path, 
                0, 
                winreg.KEY_READ | winreg.KEY_SET_VALUE
            )

            # Collect all value names (the file paths)
            values = []
            index = 0
            while True:
                try:
                    name, data, _ = winreg.EnumValue(key, index)
                    values.append(name)
                    index += 1
                except OSError:
                    break  # no more values

            # Delete each value
            for name in values:
                winreg.DeleteValue(key, name)
                total_deleted += 1

            winreg.CloseKey(key)
            print(f"[+] Removed {len(values)} entries from {key_path}")

        except FileNotFoundError:
            print(f"[-] Key not found: {key_path} (skipping)")
        except Exception as e:
            print(f"[!] Error on {key_path}: {e}")

    return total_deleted

# ----------------------------------------------------------------------
# Clear Prefetch Files (*.pf)
# ----------------------------------------------------------------------
def clear_prefetch():
    prefetch_path = r"C:\Windows\Prefetch"
    if not os.path.exists(prefetch_path):
        print("[-] Prefetch folder not found.")
        return 0

    pf_files = glob.glob(os.path.join(prefetch_path, "*.pf"))
    if not pf_files:
        print("[-] No .pf files found.")
        return 0

    deleted = 0
    for file_path in pf_files:
        try:
            os.remove(file_path)
            print(f"[+] Deleted: {os.path.basename(file_path)}")
            deleted += 1
        except Exception as e:
            print(f"[!] Could not delete {os.path.basename(file_path)}: {e}")

    return deleted

# ----------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------
def main():
    print("=" * 50)
    print("       BAM & PREFETCH CLEANER")
    print("=" * 50)

    if not is_admin():
        print("[ERROR] This script requires Administrator privileges.")
        print("Please right-click the script and select 'Run as administrator'.")
        sys.exit(1)

    print("\n⚠️  WARNING:")
    print("- This will delete ALL BAM entries for your user.")
    print("- This will delete ALL .pf prefetch files (rebuilds on next boot).")
    response = input("\nContinue? (y/n): ")
    if response.lower() != 'y':
        print("Aborted.")
        return

    # 1. Get SID
    sid = get_current_sid()
    if not sid:
        print("[!] Could not determine your SID. Aborting.")
        return
    print(f"\n[+] Current User SID: {sid}")

    # 2. Clear BAM
    print("\n--- Clearing BAM Registry ---")
    bam_count = clear_bam(sid)
    print(f"[✓] Total BAM entries deleted: {bam_count}")

    # 3. Clear Prefetch
    print("\n--- Clearing Prefetch Files ---")
    pf_count = clear_prefetch()
    print(f"[✓] Total Prefetch files deleted: {pf_count}")

    print("\n[✓] Cleanup complete. Re-run BamParser to see the changes.")

if __name__ == "__main__":
    main()