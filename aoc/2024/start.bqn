u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/01-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/01.txt"

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
