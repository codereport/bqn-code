u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/10-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/10.txt"

# Parsing
Parse ← •ParseFloat∘⥊¨·>•file.Lines

# Solutions
Peaks ← { p𝕊g: n ← p⊑g ⋄ { 9=n ? p ;
    nxt ← ((n+1)=⊑⟜g)¨⊸/g⊸h.Ib¨⊸/p⊸+¨h.del4
    { ×≠nxt ? ∾Peaks⟜g¨nxt ; ⟨⟩ }}
}

Solve ← { ∘‿2⊸⥊¨Peaks⟜𝕩¨fn.I 0= 𝕩 }
A     ← +´·≠∘⍷¨Solve
B     ← +´·≠  ¨Solve

# Tests
u.UnitTest (A Parse testInput) ≡ 36
# u.UnitTest (A Parse input)   ≡ 512
u.UnitTest (B Parse testInput) ≡ 81
# u.UnitTest (B Parse input)   ≡ 1045
