u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/19-test.txt"
input     ← •path∾"/data/19.txt"

# Parsing
Parse ← { a‿b ← s.Lines2 •file.Chars𝕩 ⋄ ⟨", "s.Split a, s.Lines b⟩}

# Solutions
Ip ← { 0=≠𝕩 ? 1 ; m ← fn.IsPrefix⟜𝕩¨𝕨 ⋄ ∨´m ? ∨´𝕨⊸𝕊¨↓⟜𝕩¨(≠¨m/𝕨) ; 0 } # is possible
A  ← { 𝕊p‿d: +´p⊸IsPossible¨d }
B  ← ⊢

# Tests
u.UnitTest (A Parse testInput) ≡ 6
# u.UnitTest (A Parse input)     ≡ 1
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
