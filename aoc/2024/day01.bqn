u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/01-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/01.txt"

# Parsing
Parse ← >·(•BQN¨s.Words)¨•file.Lines

# Solutions
A ← +´·|·-˝·∧˘⍉
B ← {+´(⥊1↑˘𝕩)×+´˘=⌜´<˘⍉𝕩}

# Tests
u.UnitTest (A Parse testInput) ≡ 11
# u.UnitTest (A Parse input)   ≡ 936063
u.UnitTest (B Parse testInput) ≡ 31
# u.UnitTest (B Parse input)   ≡ 23150395
