⟨_Tri, _AdjMap, _ChunkBy, Group⟩⇐

_Tri     ← {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩} # Triangle Product
_AdjMap  ← {(¯1⊸↓𝔽1⊸↓)𝕩}
_ChunkBy ← {(+`0∾·¬𝔽_AdjMap)⊸(⊐⊸⊔)𝕩}
Group    ← = _ChunkBy
