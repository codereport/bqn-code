u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/02-test.txt"
input     ← •path∾"/data/02.txt"

# Parsing
Parse ← { •BQN¨"-"⊸s.Split𝕩 }¨","s.Split·∾•file.Lines

# Solutions
I  ← { x ← •Fmt 𝕩 ⋄ n ← ⌊2÷˜≠x ⋄ (n↓x)≡n↑x }
I2 ← { x ← •Fmt 𝕩 ⋄ { 1=≠𝕩 ? 0 ; ∨´(1=≠∘⍷)¨x⊸{ 𝕩 fn.Chunk 𝕨 }¨ 1↓↕≠x } x }  
R  ← ∾{ (⊑𝕩)+↕1+|-´𝕩 }¨
A  ← { +´I ¨⊸/R𝕩 }
B  ← { +´I2¨⊸/R𝕩 }

# Tests
u.UnitTest (A Parse testInput) ≡ 1227775554
# u.UnitTest (A Parse input)     ≡ 21139440284
u.UnitTest (B Parse testInput) ≡ 4174379265
# u.UnitTest (B Parse input)   ≡ 23150395
