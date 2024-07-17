⟨IsVowel, IsDigit, Join, Lower, Split, Words, Unwords, Upper⟩⇐

IsDigit ← {⊑𝕩∊'0'+↕10}
IsVowel ← ∨´"aeiou"⊸=
Join    ← {(⊣∾𝕨∾⊢)´𝕩}
Lower   ← +⟜(32×1="A["⊸⍋)   # from BQN Crate
Split   ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢ # from BQN Crate
Words   ← ' '⊸Split
Unwords ← ' '⊸Join
Upper   ← -⟜(32×1="a{"⊸⍋)   # from BQN Crate
