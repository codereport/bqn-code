# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-275

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨IsDigit⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

ReplaceDigits ← {IsDigit𝕩?•BQN⥊𝕩;0}¨+{IsDigit𝕩?𝕨;𝕩}`

# Tests
UnitTest (ReplaceDigits "a1c1e1"  ) ≡ "abcdef"
UnitTest (ReplaceDigits "a1b2c3d4") ≡ "abbdcfdh"
UnitTest (ReplaceDigits "b2b"     ) ≡ "bdb"
UnitTest (ReplaceDigits "a16z"    ) ≡ "abgz"
