u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/11-test.txt"
input     ← •path∾"/data/11.txt"

# heavily inspired by: https://github.com/jhfranklin/aoc/blob/main/2024/11.bqn

# Parsing
Parse ← (⍷⋈/⁼∘⊐)·s.Nats•file.Chars

# Solutions
Cut   ← •ParseFloat˘2‿∘⥊⊢
Blink ← { ⋈⟜(𝕩˙¨){ 0=𝕩 ? ⋈1 ; 0=2|≠•Repr 𝕩 ? Cut•Repr 𝕩; ⋈2024×𝕩 }𝕨 }
Step  ← (⍷∘⊑⋈(+´¨⊐∘⊑⊔⊢´))·((∾⊑¨)⋈(∾⊢´¨))⊑Blink¨⊢´
A     ← +´·⊢´Step⍟25
B     ← +´·⊢´Step⍟75

# Tests
u.UnitTest (A Parse testInput) ≡ 55312
u.UnitTest (A Parse input)     ≡ 203228
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 240884656550923
