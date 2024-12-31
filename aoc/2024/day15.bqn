u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

miniInput ← •path∾"/data/15-mini.txt"
testInput ← •path∾"/data/15-test.txt"
input     ← •path∾"/data/15.txt"

# Parsing
Parse ← { (>∘s.Lines⊸⋈⟜(∾·s.Lines ¯1⊸↓))´s.Lines2 •file.Chars 𝕩 }

# Solutions
rs   ← ⟨⊢,⌽∘⍉,⌽∘⍉⍟2,⌽∘⍉⍟3⟩
Push ← { m ← (¬∨`⌾⌽'#'=𝕩)∧1≥(+`⌾⌽)⍟2'.'=𝕩 ⋄ ∨⌾(m⊸/)𝕩 }
Move ← { r ← ⊑rs⊏˜"<^>v"⊐𝕨 ⋄ x‿y ← ⊑fn.I'@'=R𝕩 ⋄ Push⌾((1+y)↑·⊏x↓R)𝕩 }
Gps  ← +´·100‿1⊸×¨·fn.I'O'=⊢
A    ← +´·Gps⊑Move´(⌽⊢´)
B    ← ⊢

# Tests
u.UnitTest (A Parse miniInput) ≡ 2028
u.UnitTest (A Parse testInput) ≡ 10092
# u.UnitTest (A Parse input)     ≡ 1412971
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
