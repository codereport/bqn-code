# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-276

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_Tri⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

CompleteDays ← +´·∾0=24|+_Tri

# Tests
UnitTest (CompleteDays ⟨12, 12, 30, 24, 24⟩) ≡ 2
UnitTest (CompleteDays ⟨72, 48, 24, 5⟩     ) ≡ 3
UnitTest (CompleteDays ⟨12, 18, 24⟩        ) ≡ 0
