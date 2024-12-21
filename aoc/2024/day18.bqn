u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/18-test.txt"
input     ← •path∾"/data/18.txt"

dim‿n ← ⟨⟨7,7⟩,12⟩
# dim‿n ← ⟨⟨71,71⟩,1024⟩

# Parsing
Block   ← { ¯1⌾(𝕨⊸⊑)𝕩 }
Parse   ← s.Nats¨•file.Lines
Gridify ← (+´Block⟜(dim⥊0)¨)↑

# Solutions
A ← { 1-˜(dim-1)⊑0‿0 h.FloodFill𝕩 }
B ← { 𝕩⊑˜1-˜1⊸+•_while_((¯1≠A)𝕩Gridify˜⊢)n }

# Tests
u.UnitTest (A n⊸Gridify∘Parse testInput) ≡ 22
# u.UnitTest (A n⊸Gridify∘Parse input)   ≡ 250
u.UnitTest (B Parse testInput) ≡ ⟨6,1⟩
# u.UnitTest (B Parse input)   ≡ ⟨56,8⟩
