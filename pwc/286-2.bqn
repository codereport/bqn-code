# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-286

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

OrderGame ← { 1=≠𝕩 ? ⊑𝕩 ; 𝕊 ((2÷˜≠𝕩)⥊⟨⌊´,⌈´⟩) {𝕎𝕩}¨ <˘∘‿2⥊𝕩 }

# Tests
UnitTest (OrderGame ⟨2, 1, 4, 5, 6, 3, 0, 2⟩                        ) ≡ 1
UnitTest (OrderGame ⟨0, 5, 3, 2⟩                                    ) ≡ 0
UnitTest (OrderGame ⟨9, 2, 1, 4, 5, 6, 0, 7, 3, 1, 3, 5, 7, 9, 0, 8⟩) ≡ 2
