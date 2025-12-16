# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-351

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SpecialAverage ← ×∘≠◶0‿(+´÷≠)(¬∊⟜(⌊´⋈⌈´))⊸/

# Tests
u.UnitTest (SpecialAverage ⟨8000, 5000, 6000, 2000, 3000, 7000⟩) ≡ 5250
u.UnitTest (SpecialAverage ⟨100000, 80000, 110000, 90000⟩) ≡ 95000
u.UnitTest (SpecialAverage ⟨2500, 2500, 2500, 2500⟩) ≡ 0
u.UnitTest (SpecialAverage ⟨2000⟩) ≡ 0
u.UnitTest (SpecialAverage ⟨1000, 2000, 3000, 4000, 5000, 6000⟩) ≡ 3500
