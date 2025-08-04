# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-325

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Mco ← ⌈´(+×⊢)`

# Tests
u.UnitTest (Mco 0‿1‿1‿0‿1‿1‿1) ≡ 3
u.UnitTest (Mco 0‿0‿0‿0) ≡ 0
u.UnitTest (Mco 1‿0‿1‿0‿1‿1) ≡ 2
