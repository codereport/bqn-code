u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput  ← •path∾"/data/22-test.txt"
testInputB ← •path∾"/data/22-testb.txt"
input      ← •path∾"/data/22.txt"

# Parsing
Parse ← •BQN¨•file.Lines

# Solutions
Xor ← 32•bit._xor
P   ← 16777216⊸|                                    # prune
Ns  ← (Xor⟜(P 2048⊸×))·(P Xor⟜(⌊÷⟜32))·P Xor⟜(64⊸×) # next step
A   ← +´Ns⍟2000

Nsg ← ∾⟜(Ns ¯1⊸↑)                                                # next step generate
c   ← •HashMap˜⟨⟩                                                # cache
V   ← { c.Has 𝕨 ? 𝕨 c.Set 𝕩+c.Get 𝕨 ; 𝕨 c.Set𝕩 }                 # saVe
Pb  ← { m ← ∊d ← 4↕fn.Deltas p ← 10|Nsg⍟2000𝕩 ⋄ (m/<˘d)V¨m/4↓p } # per buyer
B   ← { Pb∘⋈¨𝕩 ⋄ ⌈´c.Values@ }

# Tests
u.UnitTest (A Parse testInput)  ≡ 37327623
# u.UnitTest (A Parse input)    ≡ 14622549304
u.UnitTest (B Parse testInputb) ≡ 23
# u.UnitTest (B Parse input)    ≡ 1735
