# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-289

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

ThirdMaximum ← 2⊑((2⥊⌈´)∾˜⍷∘∨)

# Tests
UnitTest (ThirdMaximum ⟨5, 6, 4, 1⟩) ≡ 4
UnitTest (ThirdMaximum ⟨4, 5⟩      ) ≡ 5
UnitTest (ThirdMaximum ⟨1, 2, 2, 3⟩) ≡ 1
