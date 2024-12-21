u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/18-test.txt"
input     ← •path∾"/data/18.txt"

dim‿n ← ⟨⟨7,7⟩,12⟩
# dim‿n ← ⟨⟨71,71⟩,1024⟩

# Parsing
Parse ← { +´{ ¯1⌾(𝕩⊸⊑)dim⥊0 }¨n↑s.Nats¨•file.Lines𝕩 }

# Solutions
Flood ← { 𝕊g‿up:
    { 0=≠up    ? g ; pos‿n ← ⊑up
    { 0≠pos⊸⊑g ? g‿(1↓up) ;
    g   ↩ (n⊸+)⌾(pos⊸⊑)g
    adj ← ⋈⟜(n+1)¨(0=g⊑˜⊢)⊸/g⊸h.Ib¨⊸/pos⊸+¨h.del4
    g‿(adj∾˜1↓up) }}
}
A ← 1-˜(dim-1)⊑{ ⊑Flood •_while_ (×∘≠⊢´) 𝕩‿⟨⟨0,0⟩‿1⟩ }
B ← ⊢

# Tests
u.UnitTest (A Parse testInput) ≡ 22
# u.UnitTest (A Parse input)     ≡ 250
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
