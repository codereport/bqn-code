# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-272/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

# Solution 1 (Explicit)
ScoreOfString ← {+´|-´˘2↕'a'-˜𝕩}

# Solution 2 (Tacit)
ScoreOfString2 ← +´·|·-´˘2↕-⟜'a'

# Solution 3 (More Functions)
Ord            ← -⟜'a'
Deltas         ← -´˘2↕⊢
ScoreOfString3 ← +´·|·Deltas Ord

# Tests
UnitTest (ScoreOfString  "hello") ≡ 13
UnitTest (ScoreOfString  "perl" ) ≡ 30
UnitTest (ScoreOfString  "raku" ) ≡ 37
UnitTest (ScoreOfString2 "hello") ≡ 13
UnitTest (ScoreOfString2 "perl" ) ≡ 30
UnitTest (ScoreOfString2 "raku" ) ≡ 37
UnitTest (ScoreOfString3 "hello") ≡ 13
UnitTest (ScoreOfString3 "perl" ) ≡ 30
UnitTest (ScoreOfString3 "raku" ) ≡ 37
