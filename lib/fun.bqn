_Tri      ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨1+↕≠𝕩}       # Triangle Product
_TriId    ⇐ {(<˘𝔽⌜˜𝕩)↓˜¨↕≠𝕩}         # Triangle Product (including diagonal)
_Xt       ⇐ { m ← 𝕨⌈○≠𝕩 ⋄ 𝔽´m⊸↑¨𝕨‿𝕩} # Extend
_AdjMap   ⇐ {¯1⊸↓𝔽1⊸↓}
_ChunkBy  ⇐ {(+`0∾·¬𝔽_AdjMap)⊸(⊐⊸⊔)}
_ChunkKey ⇐ {(0∾+`Differ𝔽¨𝕩)⊔𝕩}

Chunk  ⇐ {1↓𝕩⊔˜+`0=𝕨|↕≠𝕩}
Pairs  ⇐ ∾⋈_Tri˜
Deltas ⇐ -˜ _AdjMap
Differ ⇐ ≠ _AdjMap
Group  ⇐ = _ChunkBy
Rle    ⇐ >·(⊑⋈≠)¨Group
Freq   ⇐ Rle∧
I      ⇐ /○⥊⟜(↕≢)      # indices for higher ranks
Iono   ⇐ ⊐(×-¬∘⊢)≠∘⊣≠⊐ # index of negative one

IsPrefix ⇐ ≤○≠◶0‿(⊣≡≠⊸↑)
FindFull ⇐ { Op ← {𝕩⌈˜𝕨-1} ⋄ m‿n ← 𝕨⋈○≠𝕩 ⋄ (1⌊·Op`m⊸×)n↑𝕨⍷𝕩 }

PowerSet     ⇐ ⥊(↕2˘)/¨< # from bqn crate
Permutations ⇐ {⊏⟜𝕩(≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕≠𝕩}
Choose       ⇐ { 𝕩(⥊⋈⊸∾⌜)⍟𝕨⟨⟨⟩⟩ }
ChooseWR     ⇐ { <˘⍷𝕨↑˘Permutations 𝕩 } # TODO: improve

Next ⇐ {
    i ← ⊢´/<_AdjMap𝕩 ⋄ x ← i⊑𝕩
    j ← ⊢´/𝕩>x       ⋄ y ← j⊑𝕩
    ⌽⌾((1+i)⊸↓)y⌾(i⊸⊑)x⌾(j⊸⊑)𝕩
}
