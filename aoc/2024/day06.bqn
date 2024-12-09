u    ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn   ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"
term ⇐ •Import "/home/cph/bqn-code/lib/terminal.bqn"

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
        # •Delay 0.1 ⋄ term.Clear@
        # •Out˘ "🎄🎅🧱"⊏˜(2×'#'=g)+1⌊sf
        sf ↩ sf+(1⊸+)⌾(np⊸⊑)sf ⋄ pos ↩ np
    }•_while_(¬Oob)np
    (+´⥊1⌊sf)⋈c>m
}

A ← { ⊑𝕩Move(⋈⟜(⊑fn.I)"^"⍷𝕩)∾0 }
B ← { +´⊢´¨Move⟜((⋈⟜(⊑fn.I)"^"⍷𝕩)∾0)¨(fn.I'#'≠𝕩)Mg¨<𝕩 }

# Tests
u.UnitTest (A Parse testInput) ≡ 41
# u.UnitTest (A Parse input)   ≡ 5177
u.UnitTest (B Parse testInput) ≡ 6
# u.UnitTest (B Parse input)   ≡ 1686
