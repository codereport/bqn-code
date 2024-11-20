# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-273

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Round⟩ ⇐ •Import "/home/cph/bqn-code/lib/math.bqn"

Percentage ← (Round 100×+´÷≠)=

# Tests
UnitTest (     "perl" Percentage 'e') ≡ 25
UnitTest (     "java" Percentage 'a') ≡ 50
UnitTest (   "python" Percentage 'm') ≡ 0
UnitTest (      "ada" Percentage 'a') ≡ 67
UnitTest ("ballerina" Percentage 'l') ≡ 22
UnitTest ( "analitik" Percentage 'k') ≡ 13
