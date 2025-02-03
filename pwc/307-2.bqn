# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-307

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

FindAnagrams ← 1+·+´·≢¨fn._AdjMap∧¨

# Tests
u.UnitTest (FindAnagrams ⟨"acca", "dog", "god", "perl", "repl"⟩) ≡ 3
u.UnitTest (FindAnagrams ⟨"abba", "baba", "aabb", "ab", "ab"⟩)   ≡ 2
