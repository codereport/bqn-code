u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/06-test.txt"
input     ← •path∾"/data/06.txt"

# Parsing
Parse ← >·s.Words¨•file.Lines

# Solutions
A ← +´·(⊑("+"≡⊣)◶⟨×´⊢,+´⊢⟩1⊸↓)˘·•BQN¨⌾(1⊸↓˘)¯1⌽˘⍉
B ← ⊢ # TODO

# Tests
u.UnitTest (A Parse testInput) ≡ 4277556
# u.UnitTest (A Parse input)   ≡ 6957525317641
u.UnitTest (B Parse testInput) ≡ 6
# u.UnitTest (B Parse input)   ≡ 23150395
