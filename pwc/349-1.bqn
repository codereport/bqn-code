# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-349

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

PowerString ← ⌈´·≠¨fn.Group

# Tests
u.UnitTest (PowerString "textbook") ≡ 2
u.UnitTest (PowerString "aaaaa")    ≡ 5
u.UnitTest (PowerString "hoorayyy") ≡ 3
u.UnitTest (PowerString "x")        ≡ 1
u.UnitTest (PowerString "aabcccddeeffffghijjk") ≡ 4
