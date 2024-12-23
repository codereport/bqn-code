u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

testInput ← •path∾"/data/22-test.txt"
input     ← •path∾"/data/22.txt"

# # Parsing
Parse ← •BQN¨•file.Lines

# # Solutions
Xor ← 32•bit._xor
P   ← 16777216⊸| # Prune
Ns  ← (Xor⟜(P 2048⊸×))·(P Xor⟜(⌊÷⟜32))·P Xor⟜(64⊸×)
A   ← +´Ns⍟2000
B   ← ⊢

# # Tests
u.UnitTest (A Parse testInput) ≡ 37327623
u.UnitTest (A Parse input)     ≡ 14622549304
# # u.UnitTest (B Parse testInput) ≡ 1
# # u.UnitTest (B Parse input)     ≡ 1
