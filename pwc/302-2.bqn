# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-302

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumStart  ← { 1⌈1-⌊´+`𝕩 } # Explicit
MinimumStart2 ← 1⌈1-·⌊´+`     # Tacit

# Tests
u.UnitTest (MinimumStart ⟨-3, 2, -3, 4, 2⟩) ≡ 5
u.UnitTest (MinimumStart ⟨1, 2⟩) ≡ 1
u.UnitTest (MinimumStart ⟨1, -2, -3⟩) ≡ 5
u.UnitTest (MinimumStart2 ⟨-3, 2, -3, 4, 2⟩) ≡ 5
u.UnitTest (MinimumStart2 ⟨1, 2⟩) ≡ 1
u.UnitTest (MinimumStart2 ⟨1, -2, -3⟩) ≡ 5
