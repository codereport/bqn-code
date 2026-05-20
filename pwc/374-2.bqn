# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-374

u ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

Lsdn ← ⌈´·•BQN¨fn.Group

# Tests
u.UnitTest (Lsdn "6777133339") ≡ 3333
u.UnitTest (Lsdn "1200034") ≡ 4
u.UnitTest (Lsdn "44221155") ≡ 55
u.UnitTest (Lsdn "88888") ≡ 88888
u.UnitTest (Lsdn "11122233") ≡ 222
