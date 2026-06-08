# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-377

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

ReverseExistence ← { ∨´∨´˘⍷⟜(⌽𝕩)˘2↕𝕩 }

# Tests
u.UnitTest (ReverseExistence "abcba") ≡ 1
u.UnitTest (ReverseExistence "racecar") ≡ 1
u.UnitTest (ReverseExistence "abcd") ≡ 0
u.UnitTest (ReverseExistence "banana") ≡ 1
u.UnitTest (ReverseExistence "hello") ≡ 1
