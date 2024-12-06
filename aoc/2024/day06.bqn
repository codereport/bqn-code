u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/06-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/06.txt"

# Parsing
Parse ← >•file.Lines

# Solutions
dx  ← ⟨¯1‿0,0‿1,1‿0,0‿¯1⟩ # deltas
Oob ← ∨´(0‿0>⊢)∾≢⊸≤       # out of bounds
Mg  ← {(-⟜11)⌾(𝕨⊸⊑)𝕩}     # modify grid

Move ← { g𝕊sf‿pos‿dir:
    np‿c‿m ← ⟨pos,0,×´≢g⟩ # new position‿count‿max
    sf { 𝕊: np ↩ pos+dir⊑dx ⋄ c ↩ c+1
        (c>m)∨sf Oob np ? ∞ ; '#'≡np⊑g ? dir ↩ 4|1+dir ;
        sf ↩ sf+(1⊸+)⌾(np⊸⊑)0⥊˜≢g ⋄ pos ↩ np
    }•_while_(¬Oob)np
    # { res ? •Show "🔴🟢"⊏˜1⌊sf ; ∞ }
    (+´⥊1⌊sf)⋈c>m
}

A ← { ⊑𝕩Move(⋈⟜(⊑fn.Idxs)"^"⍷𝕩)∾0 }
B ← { +´⊢´¨Move⟜((⋈⟜(⊑fn.Idxs)"^"⍷𝕩)∾0)¨(fn.Idxs'#'≠𝕩)Mg¨<𝕩 }

# Tests
u.UnitTest (A Parse testInput) ≡ 41
# u.UnitTest (A Parse input)   ≡ 5177
u.UnitTest (B Parse testInput) ≡ 6
# u.UnitTest (B Parse input)   ≡ 1686
