# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-288

MaxContiguousBlocks ← { 𝕊orig:
    e  ← 0⥊˜≢orig          # empty
    Iv ← ∧´≥⟜0‿0∾(≢orig)>⊢ # is valid (in bounds)
    Ff ← { mat𝕊sym‿todo: { # flood fill
        0=≠todo ? +´⥊mat ;
        pos  ← ⊑todo
        new  ← Iv¨⊸/pos⊸+¨⌽¨⊸∾0⋈¨1‿¯1
        rec  ← (sym=pos⊑orig)∧¬pos⊑mat
        mat  ↩ rec◶⊢‿(1⊸+⌾(pos⊸⊑))mat
        todo ↩ rec◶⊢‿(∾⟜new)1↓todo
        mat Ff sym‿todo
    }}
    ⌈´e⊸Ff¨(⊑⟜orig⋈<)¨⥊↕≢orig
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
