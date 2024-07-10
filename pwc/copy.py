#!/usr/bin/env python3

import os
import sys
import shutil

def copy_and_modify_files(N):

    curr   = os.getcwd()
    target = os.path.abspath(os.path.join(curr, f"../../perlweeklychallenge-club/challenge-{N}/conor-hoekstra"))

    if not os.path.exists(target):
        print(f"{target} does not exist")
        sys.exit(1)

    for i in [1, 2]:
        source_file = os.path.join(curr, f"{N}-{i}.bqn")
        if os.path.isfile(source_file):
            dest_file = os.path.join(target, f"ch-{i}.bqn")
            shutil.copy2(source_file, dest_file)
            github_link = f"# For up to date code:\n# https://github.com/codereport/bqn-code/blob/main/pwc/{N}-{i}.bqn\n"
            with open(dest_file, 'r+') as f:
                content = f.readlines()
                f.seek(0, 0)
                f.write(github_link + "".join(content[1:]))

    print(f"✅ Files copied and modified successfully to {target}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py N")
    else:
        N = int(sys.argv[1])
        copy_and_modify_files(N)
