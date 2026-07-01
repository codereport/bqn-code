# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-380

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Rd ← +´(1+↕∘≠)×26--⟜'a'

# Tests
u.UnitTest (Rd "z") ≡ 1
u.UnitTest (Rd "a") ≡ 26
u.UnitTest (Rd "bbc") ≡ 147
u.UnitTest (Rd "racecar") ≡ 560
u.UnitTest (Rd "zyx") ≡ 14
