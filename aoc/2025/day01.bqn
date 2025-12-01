u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/01-test.txt"
input     ← •path∾"/data/01.txt"

# Parsing
lr ← ∾1⊸↑¨•file.Lines testInput
n  ← (•BQN 1⊸↓)¨•file.Lines testInput

# Solutions
Stops ← { 50∾50+`𝕩×-˝"RL"=⌜𝕨 }
A ← +´0=100|Stops
B ← +´·{ +´0=100|𝕨(⌊+(↕1+|∘-))𝕩 }´˘2↕Stops

# Tests
u.UnitTest (lr A n) ≡ 3
# u.UnitTest (A Parse input)   ≡ 1023
u.UnitTest (lr (B-A) n) ≡ 6
# u.UnitTest (B Parse input)   ≡ 23150395
