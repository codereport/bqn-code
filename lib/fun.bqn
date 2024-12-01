_Tri      ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩} # Triangle Product
_TriId    ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨↕≠𝕩}   # Triangle Product (including diagonal)
_AdjMap   ⇐ {¯1⊸↓𝔽1⊸↓}
_ChunkBy  ⇐ {(+`0∾·¬𝔽_AdjMap)⊸(⊐⊸⊔)}
_ChunkKey ⇐ {(0∾+`Differ𝔽¨𝕩)⊔𝕩}

Deltas ⇐ -˜ _AdjMap
Differ ⇐ ≠ _AdjMap
Group  ⇐ = _ChunkBy
Rle    ⇐ >·(⊑⋈≠)¨Group
Freq   ⇐ Rle∧

FindFull ⇐ { Op ← {𝕩⌈˜𝕨-1} ⋄ m‿n ← 𝕨⋈○≠𝕩 ⋄ (1⌊·Op`m⊸×)n↑𝕨⍷𝕩 }

Permutations ⇐ {⊏⟜𝕩(≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕≠𝕩}
