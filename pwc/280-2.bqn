# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-280

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

AsteriskCount  ← +´'*'=(¬·≠`'|'=⊢)⊸/ # Solution 1
AsteriskCount2 ← +´(¬·≠`'|'=⊢)×'*'⊸= # Solution 2

# Tests
UnitTest (AsteriskCount  "p|*e*rl|w**e|*ekly|"          ) ≡ 2
UnitTest (AsteriskCount  "perl"                         ) ≡ 0
UnitTest (AsteriskCount  "th|ewe|e**|k|l***ych|alleng|e") ≡ 5
UnitTest (AsteriskCount2 "p|*e*rl|w**e|*ekly|"          ) ≡ 2
UnitTest (AsteriskCount2 "perl"                         ) ≡ 0
UnitTest (AsteriskCount2 "th|ewe|e**|k|l***ych|alleng|e") ≡ 5
