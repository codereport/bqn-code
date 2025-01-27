# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-306

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

LastElement ← {
    1=≠𝕩 ? ⊑𝕩 ;
    x‿y ← 2↑s ← ∨𝕩
    z   ← x ≠◶⟨⟩‿⋈∘- y
    𝕊 z∾2↓s
}

# Tests
u.UnitTest (LastElement ⟨3, 8, 5, 2, 9, 2⟩) ≡ 1
u.UnitTest (LastElement ⟨3, 2, 5⟩) ≡ 0
