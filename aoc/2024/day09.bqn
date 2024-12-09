u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/09-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/09.txt"

# Parsing
Parse ← ¯1↓•file.Chars

# Solutions

Rdfb ← { # replace dot from back
    c ← ⊑¯1↑𝕩
    i ← ⊑/'.'=𝕩
    s.Trim2 ¯1↓(c)⌾(i⊸⊑)𝕩
}

A ← {
    m‿n ← (⌈÷⟜2)⊸⋈≠𝕩
    t ← (•ParseFloat∘⥊¨𝕩)/n↑⥊⍉(m⥊'.')≍˜↕m
    +´↕∘≠⊸× Rdfb•_while_(∨´'.'=⊢) t
}
B ← ⊢

# Tests
u.UnitTest (A "12345") ≡ 60
u.UnitTest (A Parse testInput) ≡ 1928
# u.UnitTest (A Parse input)     ≡ 6330095022244
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
