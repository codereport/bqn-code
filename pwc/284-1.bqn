# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-284

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

LuckyInteger ← ⌈´¯1∾˜⊢(⊢/˜⊢=·+˝=⌜)⍷

# Tests
UnitTest (LuckyInteger ⟨2, 2, 3, 4⟩      ) ≡ 2
UnitTest (LuckyInteger ⟨1, 2, 2, 3, 3, 3⟩) ≡ 3
UnitTest (LuckyInteger ⟨1, 1, 1, 3⟩      ) ≡ -1

