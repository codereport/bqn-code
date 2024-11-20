# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-282

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Group⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

GoodInteger ← ⊑¯1∾˜·(3⊸=≠¨)⊸/Group

# Tests
UnitTest (GoodInteger "12344456") ≡ "444"
UnitTest (GoodInteger "1233334" ) ≡ -1
UnitTest (GoodInteger "10020003") ≡ "000"
