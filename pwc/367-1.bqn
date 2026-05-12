# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-367

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxOddBinary ← 1⌽∨

# Tests
u.UnitTest (MaxOddBinary "1011")   ≡ "1101"
u.UnitTest (MaxOddBinary "100")    ≡ "001"
u.UnitTest (MaxOddBinary "111000") ≡ "110001"
u.UnitTest (MaxOddBinary "0101")   ≡ "1001"
u.UnitTest (MaxOddBinary "1111")   ≡ "1111"
