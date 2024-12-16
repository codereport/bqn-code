u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/07-test.txt"
input     ← •path∾"/data/07.txt"

# Parsing
Parse ← s.Nats¨•file.Lines

# Solutions
Value ← {
    h‿t ← ⟨⊑𝕩,⌽1↓⊢𝕩⟩
    ops ← " "⊸(∾˜)¨"+×"fn.Choose˜2-˜≠𝕩
    h×∨´h=•BQN¨(•Repr¨t)⊸{∾⥊⍉𝕨≍𝕩}¨ops
}

Value2 ← { ops𝕊𝕩:
    h‿t ← ⟨⊑𝕩,⌽1↓⊢𝕩⟩
    h×∨´h=(⍷·∾{a𝕊b:{b𝕏a}¨ops}¨)´t
}

A ← +´+‿×⊸Value2¨
C ← •ParseFloat∾○•Repr # do not use •BQN / •Fmt
B ← +´+‿×‿C⊸Value2¨

# Tests
u.UnitTest (A Parse testInput) ≡ 3749
# u.UnitTest (A Parse input)   ≡ 7885693428401
u.UnitTest (B Parse testInput) ≡ 11387
# u.UnitTest (B Parse input)   ≡ 348360680516005
