# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-300

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

NestedArray ← { 𝕊xs: 1-˜≠{ 𝕩∾(⊢´𝕩)⊑xs }•_while_(∧´∊)1↑𝕩 }

# Tests
u.UnitTest (NestedArray ⟨5, 4, 0, 3, 1, 6, 2⟩) ≡ 4
u.UnitTest (NestedArray ⟨0, 1, 2⟩)             ≡ 1
