# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-274

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨IsVowel, Words, Unwords⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

Rot       ← { IsVowel ⊑ 𝕩 ? 𝕩 ; 1⌽𝕩 }
GoatLatin ← Unwords · (Rot¨ ∾¨ (('m'∾"a"/˜⊢)¨2+↕∘≠)) · Words ⊢

# Tests
UnitTest (GoatLatin "I love Perl"              ) ≡ "Imaa ovelmaaa erlPmaaaa"
UnitTest (GoatLatin "Perl and Raku are friends") ≡ "erlPmaa andmaaa akuRmaaaa aremaaaaa riendsfmaaaaaa"
UnitTest (GoatLatin "The Weekly Challenge"     ) ≡ "heTmaa eeklyWmaaa hallengeCmaaaa"
