u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/08-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/08.txt"

# Parsing
Parse ← >•file.Lines

# Solutions
Ib ← ∧´(0‿0≤⊢)∾≢⊸>                 # in bounds
Dx ← {d𝕊a‿b:(a+d)⋈b-d}             # delta
An ← { 𝕨⊸Ib¨⊸/⥊-´⊸Dx˘>∾⋈fn._Tri˜𝕩} # antinode
A  ← {≠⍷∾𝕩⊸An¨(⊐⊑⟜𝕩¨)⊸⊔fn.Idxs'.'≠𝕩}

B ← ⊢

# Tests
u.UnitTest (A Parse testInput) ≡ 14
u.UnitTest (A Parse input)     ≡ 1
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
