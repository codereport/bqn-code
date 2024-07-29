⟨IsVowel, IsDigit, Join,    Lines,   Lower,
 Split,   Words,   Unlines, Unwords, Upper⟩⇐

IsDigit ← {⊑𝕩∊'0'+↕10}
IsVowel ← ∨´"aeiou"⊸=
Join    ← {(⊣∾𝕨∾⊢)´𝕩}
Lower   ← +⟜(32×1="A["⊸⍋)   # from BQN Crate
Split   ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢ # from BQN Crate
Upper   ← -⟜(32×1="a{"⊸⍋)   # from BQN Crate

# From Haskell
Lines   ← (@+10)⊸Split
Words   ← ' '⊸Split
Unlines ← (@+10)⊸Join
Unwords ← ' '⊸Join
