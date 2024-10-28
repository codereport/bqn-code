# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-293

IsBommerang ← { 𝕊⟨⟨a,x⟩,⟨b,y⟩,⟨c,z⟩⟩: 
    0≠(a×y-z)+(b×z-x)+c×x-y
}

# Tests
•Show IsBommerang ⟨⟨1,1⟩,⟨2,3⟩,⟨3,2⟩⟩ # 1
•Show IsBommerang ⟨⟨1,1⟩,⟨2,2⟩,⟨3,3⟩⟩ # 0
•Show IsBommerang ⟨⟨1,1⟩,⟨1,2⟩,⟨2,3⟩⟩ # 1
•Show IsBommerang ⟨⟨1,1⟩,⟨1,2⟩,⟨1,3⟩⟩ # 0
•Show IsBommerang ⟨⟨1,1⟩,⟨2,1⟩,⟨3,1⟩⟩ # 0
•Show IsBommerang ⟨⟨0,0⟩,⟨2,3⟩,⟨4,5⟩⟩ # 1
