u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/13-test.txt"
input     ← •path∾"/data/13.txt"

# Parsing
Parse ← { { ∾∾s.Ints¨¨¯2⊸↑¨s.Words¨𝕩 }¨s.Lines¨s.Lines2•file.Chars𝕩 }

# Solutions
Tokens ← {
    a‿b‿c ← <˘∘‿2⥊𝕩
    r ← ((∧´⌊⊸=)∧=´)¨⊸/÷⟜a¨(∧´0⊸≤)¨⊸/c⊸-¨b⊸×¨↕⌈´⌈c÷b
    (×≠)◶0‿{y←⊑b÷˜c-a×x←⊑⊑𝕩 ⋄ y+3×x } r
}

A ← +´Tokens¨
B ← ⊢ # TODO

# Tests
u.UnitTest (A Parse testInput) ≡ 480
# u.UnitTest (A Parse input)     ≡ 28753
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
