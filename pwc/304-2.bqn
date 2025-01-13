# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-304

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaximumAverage ← ⌈´·(+´÷≠)˘↕

# Tests
u.UnitTest (4 MaximumAverage ⟨1, 12, -5, -6, 50, 3⟩) ≡ 12.75
u.UnitTest (1 MaximumAverage ⟨5⟩) ≡ 5
