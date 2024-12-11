u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/09-test.txt"
input     ← •path∾"/data/09.txt"

# Parsing
Parse ← ¯1↓•file.Chars

# Solutions
Rdfb ← { id‿i ← ⟨⊑¯1↑𝕩,⊑/'.'=𝕩⟩ ⋄ s.Trim2 ¯1↓id⌾(i⊸⊑)𝕩 } # replace dot from back
S2D  ← { •ParseFloat∘⥊¨𝕩 }                               # string to digits
A    ← {
    m‿n ← (⌈÷⟜2)⊸⋈≠𝕩
    t ← (S2D𝕩)/n↑⥊⍉(m⥊'.')≍˜↕m
    +´↕∘≠⊸×Rdfb•_while_(∨´'.'=⊢)t
}

Ids ← ∾(1-˜≠)◶⟨⥊⟜0,⥊´⟩¨
Ibfb ← { 𝕊n‿s: # insert block from back
    n    ↩ 1⊸+•_while_{1=≠⊑s↑˜-𝕩}n
    c‿id ← ⊑s↑˜-n            # count‿id
    m ← (1=≠)◶⟨0,c⊸≤⟩¨(-n)↓s # mask
    { ∨´m ? i ← ⊑/m ⋄ { i ≥ n-˜≠s ? ⟨n+1,s⟩ ;
        front ← i↑s
        mid   ← <c⋈id
        rem   ← (i⊑s)(×-)◶⟨⟨⟩,-⟩c
        back  ← c⌾((-n)⊸⊑)(i+1)↓s
        ⟨n+1,front∾mid∾rem∾back⟩
    } ; ⟨n+1,s⟩ }
}

B ← {
    m ← ¬2|↕≠𝕩
    n‿f ← Ibfb•_while_(⊑<≠∘(⊢´)) 1⋈{𝕩⋈¨↕≠𝕩}⌾(m⊸/)S2D 𝕩
    +´↕∘≠⊸× Ids f
}

# Tests
u.UnitTest (A Parse testInput) ≡ 1928
# u.UnitTest (A Parse input)   ≡ 6330095022244
u.UnitTest (B Parse testInput) ≡ 2858
# u.UnitTest (B Parse input)   ≡ 6359491814941
