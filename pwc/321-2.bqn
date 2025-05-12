# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-321

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Norm ← 0>·(⊢⌈+)`⌾⌽·-⟜¬'#'=⊢
BackspaceCompare ← ≡○Norm

# Tests
u.UnitTest ("ad#c" BackspaceCompare "ab#c") ≡ 1
u.UnitTest ("ab##" BackspaceCompare "a#b#") ≡ 1
u.UnitTest ( "a#b" BackspaceCompare "c"   ) ≡ 0
