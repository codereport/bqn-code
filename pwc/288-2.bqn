# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-288

MaxContiguousBlocks ← { 𝕊orig:
    IsValid   ← ∧´≥⟜0‿0∾(≢𝕩)>⊢
    FloodFill ← { mat𝕊sym‿todo: {
        0=≠todo ? +´⥊mat ;
        pos  ← ⊑todo
        new  ← IsValid¨⊸/pos⊸+¨⌽¨⊸∾0⋈¨1‿¯1
        rec  ← (sym=pos⊑orig)∧¬pos⊑mat
        mat  ↩ rec◶⊢‿(1⊸+⌾(pos⊸⊑))mat
        todo ↩ rec◶⊢‿(∾⟜new)1↓todo
        mat FloodFill sym‿todo
    }}
    ⌈´(0⥊˜≢𝕩)⊸FloodFill¨(⊑⟜𝕩⋈<)¨⥊↕≢𝕩
}

# Tests
•Show MaxContiguousBlocks >⟨"xxxxo",
                            "xoooo",
                            "xoooo",
                            "xxxoo"⟩ # 11

•Show MaxContiguousBlocks >⟨"xxxxx",
                            "xoooo",
                            "xxxxo",
                            "xoooo"⟩ # 11
•Show MaxContiguousBlocks >⟨"xxxoo",
                            "oooxx",
                            "oxxoo",
                            "oooxx"⟩ # 7
