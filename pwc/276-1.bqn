# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-276

⟨_Tri⟩ ⇐ •Import "../lib/fun.bqn"

CompleteDays ← +´·∾0=24|+_Tri

# Tests
•Show CompleteDays ⟨12, 12, 30, 24, 24⟩ # 2
•Show CompleteDays ⟨72, 48, 24, 5⟩      # 3
•Show CompleteDays ⟨12, 18, 24⟩         # 0
