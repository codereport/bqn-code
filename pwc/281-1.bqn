# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-281

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

IsDark ← 2|·+´48|-⟜'0'¨

# Tests
UnitTest (IsDark "d3") ≡ 1
UnitTest (IsDark "g5") ≡ 0
UnitTest (IsDark "e6") ≡ 1
UnitTest (IsDark "a1") ≡ 0
