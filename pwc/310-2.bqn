# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-310

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SortOddEven ← { m ← 2|↕≠𝕩 ⋄ ∧⌾((¬m)⊸/)∨⌾(m⊸/)𝕩 }

# Tests
u.UnitTest (SortOddEven ⟨4, 1, 2, 3⟩) ≡ ⟨2, 3, 4, 1⟩
u.UnitTest (SortOddEven ⟨3, 1⟩) ≡ ⟨3, 1⟩
u.UnitTest (SortOddEven ⟨5, 3, 2, 1, 4⟩) ≡ ⟨2, 3, 4, 1, 5⟩
