u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/06-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/06.txt"

# Parsing
Parse ← >•file.Lines

# Solutions

dx  ← ⟨¯1‿0,0‿1,1‿0,0‿¯1⟩ # deltas
Oob ← ∨´(0‿0>⊢)∾≢⊸≤       # out of bounds

Positions ← { 𝕊g‿sf‿pos‿dir:
    np ← pos
    sf { 𝕊: np ↩ pos+dir⊑dx
        sf Oob np ? ∞ ; '#'≡np⊑g ? dir ↩ 4|1+dir ;
        sf ↩ sf+(1⊸+)⌾(np⊸⊑)0⥊˜≢g ⋄ pos ↩ np
    }•_while_ (¬Oob) np
    +´⥊1⌊sf
}

A ← { Positions (<𝕩)∾(⋈⟜(⊑/○⥊⟜(↕≢))"^"⍷𝕩)∾0 }
B ← ⊢ # TODO

# Tests
u.UnitTest (A Parse testInput) ≡ 41
u.UnitTest (A Parse input)     ≡ 5177
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
