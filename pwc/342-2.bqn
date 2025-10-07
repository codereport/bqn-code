# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-342

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxScore ← { ⌈´1↓((»·+`¬)++`⌾⌽)'1'=𝕩 }

# Tests
u.UnitTest (MaxScore "0011")   ≡ 4
u.UnitTest (MaxScore "0000")   ≡ 3
u.UnitTest (MaxScore "1111")   ≡ 3
u.UnitTest (MaxScore "0101")   ≡ 3
u.UnitTest (MaxScore "011101") ≡ 5
