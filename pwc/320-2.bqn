# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-320

u ⇐ •Import "/home/cph/bqn-test/test.bqn"
b ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

SumDifference ← |(+´·∾b.Digits¨)-+´

# Tests
u.UnitTest (SumDifference (1‿23‿4‿5))  ≡ 18
u.UnitTest (SumDifference (1‿2‿3‿4‿5)) ≡ 0
u.UnitTest (SumDifference (1‿2‿34))    ≡ 27
