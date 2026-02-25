# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-362

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SpellboundSorting ← ⊢

# Tests
u.UnitFail (SpellboundSorting ⟨6, 7, 8, 9 ,10⟩) ≡ ⟨8, 9, 7, 6, 10⟩
u.UnitFail (SpellboundSorting ⟨-3, 0, 1000, 99⟩) ≡ ⟨-3, 99, 1000, 0⟩
u.UnitFail (SpellboundSorting ⟨1, 2, 3, 4, 5⟩) ≡ ⟨5, 2, 4, 3, 1⟩
u.UnitFail (SpellboundSorting ⟨100, 101, 102⟩) ≡ ⟨100, 101, 102⟩
