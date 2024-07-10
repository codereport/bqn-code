#!/usr/bin/env python3

import os
import sys
import shutil

def target(type: str, N: int) -> str:
    match type:
        case "pwc": return f"../perlweeklychallenge-club/challenge-{N}/conor-hoekstra"

def file_name(type: str, i: int) -> str:
    match type:
        case "pwc": return f"pwc/{N}-{i}.bqn"

def copy_and_modify_files(N: int, type: str):

    curr = os.getcwd()
    t    = os.path.abspath(os.path.join(curr, target(type, N)))

    if not os.path.exists(t):
        print(f"{t} does not exist")
        sys.exit(1)

    for i in [1, 2]:
        file = file_name(type, i) 
        source_file = os.path.join(curr, file)
        if os.path.isfile(source_file):
            dest_file = os.path.join(t, f"ch-{i}.bqn")
            shutil.copy2(source_file, dest_file)
            github_link = f"# For up to date code:\n# https://github.com/codereport/bqn-code/blob/main/pwc/{N}-{i}.bqn\n"
            with open(dest_file, 'r+') as f:
                content = f.readlines()
                f.seek(0, 0)
                f.write(github_link + "".join(content[1:]))

    print(f"✅ Files copied and modified successfully to {t}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py type N")
    else:
        valid_types = ["pwc"]
        type = sys.argv[1]
        if type not in valid_types:
            print(f"type must be in {valid_types}")
            sys.exit(1)
        N = int(sys.argv[2])
        copy_and_modify_files(N, type)
