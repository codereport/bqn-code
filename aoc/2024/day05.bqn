u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/05-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/05.txt"

# Parsing
Parse ← { s.Ints¨¨s.Lines¨s.Lines2•file.Chars𝕩 }
order‿lines ← Parse testInput

# Solutions
Co  ← (∨´·¬∊)∨(≤´⊐˜)    # correct order
Aco ← { ∧´Co⟜𝕩¨orders } # all correct order
M   ← ⊑(⌊2÷˜≠)⊸⊏
A   ← +´Aco◶⟨0,Middle⟩¨

Insert ← ↑´∘⊢∾⊣∾↓´∘⊢
Build  ← { l𝕊s: { ×≠l ? (1↓l)Build⊑Aco¨⊸/{(⊑l)Insert𝕩‿s}¨↕1+≠s ; s }}
Find   ← Middle Build⟜⟨⟩
B      ← +´·Find¨¬∘Aco¨⊸/

# Tests
u.UnitTest (A lines) ≡ 143
# u.UnitTest (A l) ≡ 5268
u.UnitTest (B lines) ≡ 123
# u.UnitTest (B l) ≡ 5799
