u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/05-test.txt"
input     ← •path∾"/data/05.txt"

# Parsing
Parse ← { s.Ints¨¨s.Lines¨s.Lines2•file.Chars𝕩 }
orders‿lines ← Parse testInput

# Solutions
Grade ← ⍒(∊⟜(>orders)⋈)⌜˜
Mid   ← (⌊2÷˜≠)⊸⊑
A     ← +´·Mid¨∧⊸≡∘Grade¨⊸/
B     ← +´·Mid¨Grade¨⊸((¬∧⊸≡)¨∘⊣/⊏¨)

# Tests
u.UnitTest (A lines) ≡ 143
# u.UnitTest (A lines) ≡ 5268
u.UnitTest (B lines) ≡ 123
# u.UnitTest (B lines) ≡ 5799
