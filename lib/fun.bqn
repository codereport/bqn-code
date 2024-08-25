⟨_Tri, _TriId, _AdjMap, Deltas, Differ, _ChunkBy, Group⟩⇐

_Tri     ← {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩} # Triangle Product
_TriId   ← {(<˘𝔽⌜˜𝕩)↓˜¨↕≠𝕩}   # Triangle Product (including diagonal)
_AdjMap  ← {(¯1⊸↓𝔽1⊸↓)𝕩}
Deltas   ← -˜ _AdjMap
Differ   ← ≠ _AdjMap
_ChunkBy ← {(+`0∾·¬𝔽_AdjMap)⊸(⊐⊸⊔)𝕩}
Group    ← = _ChunkBy
