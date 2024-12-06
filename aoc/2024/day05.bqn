u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/05-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/05.txt"

# Parsing
Parse ← { s.Ints¨¨s.Lines¨s.Lines2•file.Chars𝕩 }
orders‿lines ← Parse testInput

# Solutions
Co  ← (∨´·¬∊)∨(<´⊐˜)  # correct order
Aco ← ∧´(orders Co¨<) # all correct order
Mid ← (⌊2÷˜≠)⊸⊑
A   ← +´Aco◶⟨0,Mid⟩¨

Insert ← ↑´∘⊢∾⊣∾↓´∘⊢
Build  ← { ×≠𝕨 ? (1↓𝕨)𝕊⊑Aco¨⊸/((⊑𝕨)Insert𝕩⋈˜⊢)¨↕1+≠𝕩 ; 𝕩 }
B      ← +´·(Mid Build⟜⟨⟩)¨¬∘Aco¨⊸/

# Tests
u.UnitTest (A lines) ≡ 143
# u.UnitTest (A l) ≡ 5268
u.UnitTest (B lines) ≡ 123
# u.UnitTest (B l) ≡ 5799
