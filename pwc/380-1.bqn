# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-380

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

v ← "aeoiu"
a ← v(¬∘∊˜/⊢)'a'+↕26
Fc ← ⌈´·+´˘=⌜
Sof ← v⊸Fc+a⊸Fc

# Tests
u.UnitTest (Sof "banana")   ≡ 5
u.UnitTest (Sof "teestett") ≡ 7
u.UnitTest (Sof "aeiouuaa") ≡ 3
u.UnitTest (Sof "rhythm")   ≡ 2
u.UnitTest (Sof "x")        ≡ 1
