# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-296

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Bfs ← { 𝕊t‿n‿s‿l: {
    4=n       ? 1 ;
    t=s       ? Bfs ⟨t,n+1,0,l⟩ ;
    0=≠l      ? 0 ;
    0=∨´t≥s+l ? 0 ;
    m ← ∊⊸∧t≥s+l
    Bfs ⟨t,n,s+⊑m/l,l/˜¬m⟩
}}

IsMatchstickSquare ← {
    0≠4|+´𝕩 ? 0 ;
    Bfs ⟨4÷˜+´𝕩,0,0,∨𝕩⟩
}

# Tests
UnitTest 1 = IsMatchstickSquare ⟨1, 2, 2, 2, 1⟩
UnitTest 0 = IsMatchstickSquare ⟨2, 2, 2, 4⟩
UnitTest 0 = IsMatchstickSquare ⟨2, 2, 2, 2, 4⟩
UnitTest 1 = IsMatchstickSquare ⟨3, 4, 1, 4, 3, 1⟩
