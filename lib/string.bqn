⟨IsVowel, IsDigit, Join,    Lines,   Lower, IsLower,
 Split,   Words,   Unlines, Unwords, Upper, IsUpper⟩⇐

IsDigit ← {⊑𝕩∊'0'+↕10}
IsVowel ← ∨´"aeiouAEIOU"⊸=
Join    ← {(⊣∾𝕨∾⊢)´𝕩}
Lower   ← +⟜(32×1="A["⊸⍋)   # from BQN Crate
Split   ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢ # from BQN Crate
Upper   ← -⟜(32×1="a{"⊸⍋)   # from BQN Crate
IsLower ← ∨´('a'+↕26)⊸=
IsUpper ← ∨´('A'+↕26)⊸=

# From Haskell
Lines   ← (@+10)⊸Split
Words   ← ' '⊸Split
Unlines ← (@+10)⊸Join
Unwords ← ' '⊸Join
