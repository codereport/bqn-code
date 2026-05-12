# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-366

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Vt ← ⊢

# Tests
u.UnitFail (Vt "?2:34") ≡ 1
u.UnitFail (Vt "?4:?0") ≡ 12
u.UnitFail (Vt "??:??") ≡ 1440
u.UnitFail (Vt "?3:45") ≡ 3
u.UnitFail (Vt "2?:15") ≡ 4
