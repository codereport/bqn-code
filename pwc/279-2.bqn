# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-279

⟨IsVowel⟩ ⇐ •Import "../lib/string.bqn"

SplitString ← ¬2|·+´IsVowel¨

# Tests
•Show SplitString "perl"         # 0
•Show SplitString "book"         # 1
•Show SplitString "good morning" # 1
