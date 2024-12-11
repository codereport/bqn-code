u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/02-test.txt"
input     ← •path∾"/data/02.txt"

# Parsing
Parse ← s.Ints¨•file.Lines

# Solutions
Safe ← (∧´∘(1⊸≤∧≤⟜3)∘|∧(∨≡∧)∘×)fn.Deltas
A    ← +´Safe¨
B    ← +´{∨´Safe∘/⟜𝕩˘≠⌜˜↕≠𝕩}¨

# Tests
u.UnitTest (A Parse testInput) ≡ 2
# u.UnitTest (A Parse input)   ≡ 202
u.UnitTest (B Parse testInput) ≡ 4
# u.UnitTest (B Parse input)   ≡ 271
