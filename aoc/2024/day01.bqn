u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/01-test.txt"
input     ← •path∾"/data/01.txt"

# Parsing
Parse ← >·s.Ints¨•file.Lines

# Solutions
A ← +´·|·-˝·∧˘⍉
B ← {+´(⊑˘𝕩)×+´˘=⌜´<˘⍉𝕩}

# Tests
u.UnitTest (A Parse testInput) ≡ 11
# u.UnitTest (A Parse input)   ≡ 936063
u.UnitTest (B Parse testInput) ≡ 31
# u.UnitTest (B Parse input)   ≡ 23150395
