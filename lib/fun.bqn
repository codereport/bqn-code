_Tri     ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩} # Triangle Product
_TriId   ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨↕≠𝕩}   # Triangle Product (including diagonal)
_AdjMap  ⇐ {¯1⊸↓𝔽1⊸↓}
_ChunkBy ⇐ {(+`0∾·¬𝔽_AdjMap)⊸(⊐⊸⊔)}

Deltas ⇐ -˜ _AdjMap
Differ ⇐ ≠ _AdjMap
Group  ⇐ = _ChunkBy
Rle    ⇐ >·(⊑⋈≠)¨⊐⊸⊔
Freq   ⇐ Rle∧

Permutations ⇐ {⊏⟜𝕩(≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕≠𝕩}
