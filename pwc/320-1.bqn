# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-320

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaximumCount  ← 0⊸<⌈○(+´)0⊸>
MaximumCount2 ← 0⊸(<⌈○(+´)>)

# Tests
u.UnitTest (MaximumCount  (¯3‿¯2‿¯1‿1‿2‿3)) ≡ 3
u.UnitTest (MaximumCount  (¯2‿¯1‿0‿0‿1))    ≡ 2
u.UnitTest (MaximumCount  (1‿2‿3‿4))        ≡ 4
u.UnitTest (MaximumCount2 (¯3‿¯2‿¯1‿1‿2‿3)) ≡ 3
u.UnitTest (MaximumCount2 (¯2‿¯1‿0‿0‿1))    ≡ 2
u.UnitTest (MaximumCount2 (1‿2‿3‿4))        ≡ 4
