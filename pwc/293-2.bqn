# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-293

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

IsBommerang ← { 𝕊⟨⟨a,x⟩,⟨b,y⟩,⟨c,z⟩⟩:
    0≠(a×y-z)+(b×z-x)+c×x-y
}

# Tests
UnitTest (IsBommerang ⟨⟨1,1⟩,⟨2,3⟩,⟨3,2⟩⟩) ≡ 1
UnitTest (IsBommerang ⟨⟨1,1⟩,⟨2,2⟩,⟨3,3⟩⟩) ≡ 0
UnitTest (IsBommerang ⟨⟨1,1⟩,⟨1,2⟩,⟨2,3⟩⟩) ≡ 1
UnitTest (IsBommerang ⟨⟨1,1⟩,⟨1,2⟩,⟨1,3⟩⟩) ≡ 0
UnitTest (IsBommerang ⟨⟨1,1⟩,⟨2,1⟩,⟨3,1⟩⟩) ≡ 0
UnitTest (IsBommerang ⟨⟨0,0⟩,⟨2,3⟩,⟨4,5⟩⟩) ≡ 1
