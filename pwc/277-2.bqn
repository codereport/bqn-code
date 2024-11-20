# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-277

⟨UnitTest, UnitFail⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_Tri⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

StrongPairs ← +´·∾(⌊(>∧0<⊢)|∘-)_Tri

# Tests
UnitTest (StrongPairs ⟨1, 2, 3, 4, 5⟩) ≡ 4
UnitFail (StrongPairs ⟨5, 7, 1, 7⟩   ) ≡ 1 # (technically my solution outputs 2)
