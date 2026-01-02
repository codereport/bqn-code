u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/03-test.txt"
input     ← •path∾"/data/03.txt"

# Parsing
Parse ← -⟜'0'¨•file.Lines

# Solutions
# A  ← +´{⌈´∾{+´10‿1×𝕨‿𝕩} fn._Tri 𝕩 }¨ # original A
M   ← ⊑⌈´⊸=⊸/⟜(⋈¨⟜(↕≠))
N   ← 10⊸×⊸+˜´⌽
Sol ← { +´𝕨{ N⊑⟨⟩‿𝕩{ 𝕨𝕊r‿l: m‿i ← M𝕨↓l ⋄ (r∾m)⋈l↓˜1+i }´-↕𝕨 }¨𝕩 }
A   ←  2⊸Sol
B   ← 12⊸Sol

# Tests
u.UnitTest (A Parse testInput) ≡ 357
u.UnitTest (A Parse input)     ≡ 17694
u.UnitTest (B Parse testInput) ≡ 3121910778619
u.UnitTest (B Parse input)     ≡ 175659236361660
