#!/usr/bin/env python3

import sys

def create_files(n: int):
    content = f"# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-{n}\n\nF ← ⊢\n\n# Tests"

    f1 = f"{n}-1.bqn"
    f2 = f"{n}-2.bqn"

    with open(f1, 'w') as a, open(f2, 'w') as b:
        a.write(content)
        b.write(content)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python create_files.py <number>")
        sys.exit(1)

    try:
        N = int(sys.argv[1])
        create_files(N)
        print(f"✅ Files {N}-1.bqn and {N}-2.bqn created successfully.")
    except ValueError:
        print("Error: Please provide a valid integer for N.")
        sys.exit(1)
