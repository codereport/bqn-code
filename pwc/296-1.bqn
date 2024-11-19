# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-296

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Group⟩    ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

CompressString ← ∾·((1⊸=◶•Fmt‿""≠)∾⊑)¨Group

# Tests
UnitTest (CompressString "abbc")           ≡ "a2bc"
UnitTest (CompressString "aaabccc")        ≡ "3ab3c"
UnitTest (CompressString "abcc")           ≡ "ab2c"
UnitTest (CompressString "abccaa")         ≡ "ab2c2a"
UnitTest (CompressString "aaaaaaaaaaabcc") ≡ "11ab2c"
