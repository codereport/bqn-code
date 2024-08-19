# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-282

⟨Group⟩ ⇐ •Import "../lib/fun.bqn"

GoodInteger ← ⊑¯1∾˜·(3⊸=≠¨)⊸/Group

# Tests
•Show GoodInteger "12344456" # "444"
•Show GoodInteger "1233334"  # -1
•Show GoodInteger "10020003" # "000"
