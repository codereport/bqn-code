# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-313

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

ReverseLetters ← { ⌽⌾((𝕩∊⥊"Aa"+⌜↕26)⊸/)𝕩 }

# Tests
u.UnitTest (ReverseLetters "p-er?l")           ≡ "l-re?p"
u.UnitTest (ReverseLetters "wee-k!L-y")        ≡ "yLk-e!e-w"
u.UnitTest (ReverseLetters "_c-!h_all-en!g_e") ≡ "_e-!g_nel-la!h_c"
