# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-279

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨IsVowel⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

SplitString ← ¬2|·+´IsVowel¨

# Tests
UnitTest (SplitString "perl"        ) ≡ 0
UnitTest (SplitString "book"        ) ≡ 1
UnitTest (SplitString "good morning") ≡ 1
