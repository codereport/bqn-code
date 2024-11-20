# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-294

⟨UnitFail⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

NextPermutation ← ⊢

# Tests
UnitFail (NextPermutation ⟨1, 2, 3⟩) ≡ ⟨1, 3, 2⟩
UnitFail (NextPermutation ⟨2, 1, 3⟩) ≡ ⟨2, 3, 1⟩
UnitFail (NextPermutation ⟨3, 1, 2⟩) ≡ ⟨3, 2, 1⟩
