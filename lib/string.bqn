IsDigit ⇐ {⊑𝕩∊'0'+↕10}
IsVowel ⇐ ∨´"aeiouAEIOU"⊸=
Join    ⇐ { 0=≠𝕩 ? 𝕩 ; (⊣∾𝕨∾⊢)´𝕩 }
Lower   ⇐ +⟜(32×1="A["⊸⍋)   # from BQN Crate
Split   ⇐ { Op ← {𝕩⌈˜𝕨-1} ⋄ m‿n ← 𝕨⋈○≠𝕩 ⋄ 𝕩⊔˜1-˜((1++`)∧(¬1⌊·Op`m⊸×))n↑𝕨⍷𝕩 }
Replace ⇐ { t‿r𝕊𝕩: r Join t Split 𝕩 }
Upper   ⇐ -⟜(32×1="a{"⊸⍋)   # from BQN Crate
IsLower ⇐ ∨´('a'+↕26)⊸=
IsUpper ⇐ ∨´('A'+↕26)⊸=

# From Haskell
Lines   ⇐ (@+10)⊸Split
Words   ⇐ ' '⊸Split
Unlines ⇐ (@+10)⊸Join
Unwords ⇐ ' '⊸Join
