u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/19-test.txt"
input     ← •path∾"/data/19.txt"

# Parsing
Parse ← { a‿b ← s.Lines2 •file.Chars𝕩 ⋄ ⟨", "s.Split a, s.Lines b⟩}

# Solutions
dp   ← ⟨""⟩•HashMap⟨1⟩
Ip   ← { dp.Has 𝕩 ? dp.Get 𝕩 ; r⊣𝕩dp.Set r ← +´𝕨⊸𝕊¨↓⟜𝕩¨≠¨𝕨/˜fn.IsPrefix⟜𝕩¨𝕨 }
Ways ← { 𝕊p‿d: p⊸Ip¨d }
A    ← +´·×Ways
B    ← +´Ways

# Tests
u.UnitTest (A Parse testInput) ≡ 6
# u.UnitTest (A Parse input)     ≡ 260
u.UnitTest (B Parse testInput) ≡ 16
# u.UnitTest (B Parse input)     ≡ 639963796864990
