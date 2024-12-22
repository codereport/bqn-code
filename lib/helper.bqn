del4 ⇐ ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩ # deltas 4 directions
del8 ⇐ 1↓⥊⋈⌜˜0‿¯1‿1        # deltas in 8 directions

Ib ⇐ ∧´0⊸≤∾≢⊸>

Flood ← { 𝕊grid‿next:
    { 0=≠next     ? grid ; pos‿n ← ⊑next
    { 0≠pos⊑grid ? grid‿(1↓next) ;
    grid ↩ (n⊸+)⌾(pos⊸⊑)grid
    adj ← ⋈⟜(n+1)¨(0=grid⊑˜⊢)⊸/grid⊸Ib¨⊸/pos⊸+¨del4
    grid‿(adj∾˜1↓next) }}
}

FloodFill ⇐ { start𝕊grid: ⊑Flood•_while_(×∘≠⊢´)grid‿⟨start‿1⟩ }

BuildPath ← { 𝕊grid‿path:
    pos ← ¯1⊑path
    ng  ← (1⊸+)⌾(pos⊸⊑)grid # new grid
    adj ← (0=grid⊑˜⊢)⊸/grid⊸Ib¨⊸/pos⊸+¨del4
    (⋈ng)⊸∾¨⋈¨(path∾⋈)¨adj
}

AllPaths ⇐ { start‿end𝕊grid:
    paths ← ⟨⟩
    { 𝕊pp: g‿p ← ⊑𝕩 ⋄ { end≡¯1⊑p ?
        paths ↩ paths∾⋈p ⋄ 1↓pp ;
        (1↓pp)∾BuildPath g‿p }
    }•_while_ (×≠) ⟨grid‿(⋈start)⟩
    paths
}
