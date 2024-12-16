u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/13-test.txt"
input     ← •path∾"/data/13.txt"

# Parsing
Parse ← { { ∾∾s.Nats¨¨¯2⊸↑¨s.Words¨𝕩 }¨s.Lines¨s.Lines2•file.Chars𝕩 }

# Solutions
Tokens ← { a‿b‿c ← <˘∘‿2⥊𝕩
    Det ← -´∘×⟜⌽
    r   ← ⟨c Det b, a Det c⟩ ÷ a Det b
    (+´3‿1⊸××(∧´⌊⊸=))r
}

A ← +´Tokens¨
B ← +´·Tokens¨(1e13⊸+)⌾(4‿5⊸⊏)¨

# Tests
u.UnitTest (A Parse testInput) ≡ 480
# u.UnitTest (A Parse input)   ≡ 28753
u.UnitTest (B Parse testInput) ≡ 875318608908
# u.UnitTest (B Parse input)   ≡ 102718967795500
