#!/usr/bin/env python3

import os
import sys
import shutil

def zero_pad(n: int) -> str:
    return f"0{n}" if n < 10 else f"{n}"

def target(type: str, N: int) -> str:
    match type:
        case "pwc":      return f"../perlweeklychallenge-club/challenge-{N}/conor-hoekstra"
        case "aoc/2022": return f"../Advent-of-Code-2022/"
        case "aoc/2023": return f"../Advent-of-Code-2023/"
        case "leetcode": return f"../leetcode/"

def source_file_name(type: str, N: int, i: int) -> str:
    match type:
        case "pwc":      f = f"{N}-{i}.bqn"            # 273-1.bqn
        case "aoc/2022" \
           | "aoc/2023": f = f"day{zero_pad(N)}.bqn"   # day01.bqn
        case "leetcode": f = f"{'b' if bw else ''}{N // 10}-{N % 10}.bqn" # 403-1.bqn
    return f"{type}/{f}"

def dest_file_name(type: str, i: int) -> str:
    match type:
        case "pwc":      return f"ch-{i}.bqn"                      # ch-1.bqn
        case "aoc/2022" \
           | "aoc/2023": return f"day{zero_pad(i)}.bqn"            # day01.bqn
        case "leetcode": return f"{'B' if bw else ''}0{N // 10}_Problem_{N % 10}.bqn" # 0403_Problem_1.bqn

def file_numbers(type: str, n: int):
    match type:
        case "pwc":      return [1, 2]
        case "aoc/2022" \
           | "aoc/2023": return [n]
        case "leetcode": return [n]

def copy_and_modify_files(N: int, type: str):

    c = os.getcwd()
    t = os.path.abspath(os.path.join(c, target(type, N)))

    if not os.path.exists(t):
        print(f"{t} does not exist")
        sys.exit(1)

    for i in file_numbers(type, N):
        sfn = source_file_name(type, N, i)
        source_file = os.path.join(c, sfn)
        if os.path.isfile(source_file):
            dest_file = os.path.join(t, dest_file_name(type, i))
            shutil.copy2(source_file, dest_file)
            extra_break = "\n" if type != "pwc" else ""
            github_link = f"# For up to date code:\n# https://github.com/codereport/bqn-code/blob/main/{sfn}\n{extra_break}"
            with open(dest_file, 'r+') as f:
                content = f.readlines()
                f.seek(0, 0)
                drop = 1 if type == "pwc" else 0
                f.write(github_link + "".join(content[drop:]))
        else:
            print(f"{source_file} does not exist")
            return

    print(f"✅ Files copied and modified successfully to {t}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py type N")
    else:
        valid_types = ["pwc", "aoc/2022", "aoc/2023", "leetcode"]
        type = sys.argv[1]
        if type not in valid_types:
            print(f"type must be in {valid_types}")
            sys.exit(1)
        bw = sys.argv[2][0] == 'b'
        N = int(sys.argv[2][bw:])
        copy_and_modify_files(N, type)
