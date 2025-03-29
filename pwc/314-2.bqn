# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-314

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SortColumns ← +´·∧⊸≢˘⍉

# Tests
u.UnitTest (SortColumns >"swpc"‿"tyad"‿"azbe") ≡ 2
u.UnitTest (SortColumns >"cba"‿"daf"‿"ghi") ≡ 1
u.UnitTest (SortColumns >"a"‿"b"‿"c") ≡ 0
