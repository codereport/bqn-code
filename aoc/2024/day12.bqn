u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

miniInput ← •path∾"/data/12-mini.txt"
testInput ← •path∾"/data/12-test.txt"
input     ← •path∾"/data/12.txt"

# Parsing
Parse ← >•file.Lines

# Solutions
FloodFill ← { g𝕊ps‿up‿f: # positions‿fence
    n‿p  ← (⊑⟜g⊸⋈) ⊑up
    next ← (¬∊⟜ps)⊸/p⊸+¨h.del4
    m1   ← g⊸h.Ib¨next            # mask 1
    in   ← m1⊸/next               # pos in bounds
    m2   ← { ×≠in ? n=in⊑g ; ⟨⟩ } # mask 2
    nf   ← f++´m1(∾○¬)m2          # new fence
    nps  ← ∧ps∾⋈p                 # new positions
    { (1<≠up)∨×+´m2  ? g FloodFill ⟨nps,⍷(1↓up)∾m2/in,nf⟩ ; nps‿nf }
}

Plots ← { ⍷ 𝕩⊸FloodFill¨{(⋈⟨⟩)∾0⋈˜⋈𝕩}¨fn.I 'A'≤𝕩 }
A     ← +´·≠⊸×´¨Plots

sq    ← ⟨⟨⟨0,0⟩,⟨1,0⟩,⟨1,1⟩,⟨0,1⟩⟩,⟨⟨0,0⟩,⟨0,1⟩,⟨¯1,1⟩,⟨¯1,0⟩⟩,⟨⟨0,0⟩,⟨¯1,0⟩,⟨¯1,¯1⟩,⟨0,¯1⟩⟩,⟨⟨0,0⟩,⟨0,¯1⟩,⟨1,¯1⟩,⟨1,0⟩⟩⟩
cp    ← 'x'=∾⟨⋈"xx.x",(↕4)⌽¨<"x...",(↕2)⌽¨<"x.x."⟩ # corner patterns
Sides ← { +´(cp≡⚇1˜⊢)¨((𝕨⊸h.Ib)◶⟨0,𝕩=○(⊑⟜𝕨)⊢⟩¨𝕩⊸+¨)¨sq }
B     ← { +´(≠×(+´·∾𝕩⊸Sides¨))¨⊑¨Plots𝕩 }

# Test
u.UnitTest (A Parse miniInput) ≡ 140
u.UnitTest (A Parse testInput) ≡ 1930
# u.UnitTest (A Parse input)   ≡ 1374934
u.UnitTest (B Parse miniInput) ≡ 80
u.UnitTest (B Parse testInput) ≡ 1206
# u.UnitTest (B Parse input)   ≡ 841078
