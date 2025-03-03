# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-311

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

UpperLower ← { a‿b ← ⥊¨⌽⊸⋈"aA"+⌜↕26 ⋄ a⊏˜b⊐𝕩 }

# Tests
u.UnitTest (UpperLower "pERl")   ≡ "PerL"
u.UnitTest (UpperLower "rakU")   ≡ "RAKu"
u.UnitTest (UpperLower "PyThOn") ≡ "pYtHoN"
