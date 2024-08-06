# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-281

Convert ← 48|-⟜'0'¨
deltas  ← ⌽¨⊸∾⥊2‿¯2⋈⌜1‿¯1
IsValid ← ∧´1⊸≤∧≤⟜8
Moves   ← IsValid¨⊸/·⥊deltas+⌜⊢

MinKnightMoves ← {
    end‿start ← 𝕨 ⋈○Convert 𝕩
    1 end { ∨´𝕗⊸≡¨Moves 𝕩 ? 𝕨 ; (𝕨+1) 𝕊 Moves 𝕩 } ⟨start⟩
}

# Tests
•Show "g2" MinKnightMoves "a8" # 4
•Show "g2" MinKnightMoves "h2" # 3
