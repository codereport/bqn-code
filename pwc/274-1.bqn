# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-274

⟨IsVowel, Words, Unwords⟩ ⇐ •Import "../lib/string.bqn"

Rot       ← { IsVowel ⊑ 𝕩 ? 𝕩 ; 1⌽𝕩 }
GoatLatin ← Unwords · (Rot¨ ∾¨ (('m'∾"a"/˜⊢)¨2+↕∘≠)) · Words ⊢

# Tests
•Show GoatLatin "I love Perl"               # "Imaa ovelmaaa erlPmaaaa"
•Show GoatLatin "Perl and Raku are friends" # "erlPmaa andmaaa akuRmaaaa aremaaaaa riendsfmaaaaaa"
•Show GoatLatin "The Weekly Challenge"      # "heTmaa eeklyWmaaa hallengeCmaaaa"
