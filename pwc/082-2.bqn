# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-082

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Interleave    ← { n𝕊a‿b: n(↑(∾⟜b⊸∾)↓)a }
IsInterleaved ← { ∨´𝕨⊸≡¨(↕≠⊑𝕩)Interleave¨<𝕩 }

# Tests
UnitTest 1 =    "XXY" IsInterleaved "XY"‿"X"
UnitTest 1 = "XXXXZY" IsInterleaved "XXY"‿"XXZ"
UnitTest 0 =    "XXY" IsInterleaved "YX"‿"X"
