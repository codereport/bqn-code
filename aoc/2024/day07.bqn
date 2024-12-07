u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/07-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/07.txt"

# Parsing
Parse ← s.Ints¨•file.Lines

# Solutions
Value ← {
    h‿t ← ⟨⊑𝕩,⌽1↓⊢𝕩⟩
    ops ← " "⊸(∾˜)¨"+×"Choose˜2-˜≠𝕩
    h×∨´h=•BQN¨(•Fmt¨t)⊸{∾⥊⍉𝕨≍𝕩}¨ops
}
A ← +´+‿×⊸ValueFast¨
B ← ⊢

# Tests
u.UnitTest (A Parse testInput) ≡ 3749
u.UnitTest (A Parse input)     ≡ 7885693428401
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
