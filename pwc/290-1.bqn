# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-290

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

DoubleExists ← ∨´2⊸×⊸∊

# Tests
UnitTest (DoubleExists ⟨6, 2, 3, 3⟩ ) ≡ 1
UnitTest (DoubleExists ⟨3, 1, 4, 13⟩) ≡ 0
UnitTest (DoubleExists ⟨2, 1, 4, 2⟩ ) ≡ 1
