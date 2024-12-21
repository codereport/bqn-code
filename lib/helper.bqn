del4 ⇐ ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩ # deltas 4 directions
del8 ⇐ 1↓⥊⋈⌜˜0‿¯1‿1        # deltas in 8 directions

Ib ⇐ ∧´0⊸≤∾≢⊸>

Flood ← { 𝕊grid‿next:
    { 0=≠next     ? grid ; pos‿n ← ⊑next
    { 0≠pos⊸⊑grid ? grid‿(1↓next) ;
    grid ↩ (n⊸+)⌾(pos⊸⊑)grid
    adj ← ⋈⟜(n+1)¨(0=grid⊑˜⊢)⊸/grid⊸Ib¨⊸/pos⊸+¨del4
    grid‿(adj∾˜1↓next) }}
}

FloodFill ⇐ { start𝕊grid: ⊑Flood•_while_(×∘≠⊢´)grid‿⟨start‿1⟩ }
