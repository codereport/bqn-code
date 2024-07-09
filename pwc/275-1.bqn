# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-275

Join    ← {(⊣∾𝕨∾⊢)´𝕩}
Split   ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢ # from BQN Crate
Words   ← ' '⊸Split
Unwords ← ' '⊸Join
Lower   ← +⟜(32×1="A["⊸⍋) # from BQN Crate

CanType ← +´·¬·⌈´¨·∨˝=⌜⟜Words○Lower

# Tests
•Show "la" CanType "Perl Weekly Challenge"    # 0
•Show  "a" CanType "Perl and Raku"            # 1
•Show "lo" CanType "Well done Team PWC"       # 2
•Show  "T" CanType "The joys of polyglottism" # 2
