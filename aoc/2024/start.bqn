u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/01-test.txt"
input     ← •path∾"/data/01.txt"

# Parsing
Parse ← •file.Lines

# Solutions
A ← ⊢
B ← ⊢

# Tests
# u.UnitTest (A Parse testInput) ≡ 1
# u.UnitTest (A Parse input)     ≡ 1
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
