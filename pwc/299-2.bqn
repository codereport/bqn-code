# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-299

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

WordSearch ← { t𝕊grid:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    Rec ← { pos𝕊l‿d: {
        ¬l fn.IsPrefix t ? 0 ; t=○≠l ? 1 ;
        npos ← (grid⊸h.Ib∧{¬∨´⥊𝕩⊸≡¨d})¨⊸/pos⊸+¨deltas
        ∨´Rec⟜⟨l∾pos⊑grid,d∾<pos⟩¨npos }
    }
    ∨´Rec⟜⟨"",⟨⟩⟩¨fn.I 1⥊˜≢grid
}

# Tests
u.UnitTest ( "BDCA" WordSearch 4‿4⥊"ABDECBCABAADDBBC") ≡ 1
u.UnitTest ( "ABAC" WordSearch 4‿4⥊"AABBCCBACAAABBBB") ≡ 0
u.UnitTest ("CCCAA" WordSearch 4‿4⥊"BABACCCCABABBBAA") ≡ 1
