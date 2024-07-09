# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-277

_Tri ← {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩} # short for Triangle Product

StrongPairs ← +´·∾(⌊(>∧0<⊢)|∘-)_Tri

# Tests
•Show StrongPairs ⟨1, 2, 3, 4, 5⟩ # 4
•Show StrongPairs ⟨5, 7, 1, 7⟩    # 1 (technically my soluiton outputs 2)
