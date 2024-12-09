u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/08-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/08.txt"

# Parsing
Parse ← >•file.Lines

# Solutions
Cx ← { (⊐⊑⟜𝕩¨)⊸⊔fn.Idxs'.'≠𝕩 }     # coordinates
Ib ← ∧´(0‿0≤⊢)∾≢⊸>                 # in bounds
Dx ← +⟜⊑⋈-˜⟜(⊢´)                   # delta
An ← { 𝕨⊸Ib¨⊸/∾-´⊸Dx¨∾⋈fn._Tri˜𝕩 } # antinode
A  ← { ≠⍷∾(𝕩⊸An⊢)¨Cx𝕩 }

Dx2 ← { n‿d𝕊a‿b:((b⊸-)⋈a⊸+)¨d⊸×¨↕n }            # delta
An2 ← { 𝕨⊸Ib¨⊸/∾∾(((⌈´≢𝕨)⋈-´)⊸Dx2)¨∾⋈fn._Tri˜𝕩} # antinode
B   ← { ≠⍷∾𝕩⊸An2¨Cx𝕩 }

# Tests
u.UnitTest (A Parse testInput) ≡ 14
u.UnitTest (A Parse input)     ≡ 293
u.UnitTest (B Parse testInput) ≡ 34
u.UnitTest (B Parse input)     ≡ 934
