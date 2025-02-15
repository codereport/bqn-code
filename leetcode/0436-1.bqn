# Link: https://leetcode.com/problems/sort-matrix-by-diagonals

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

D ← (+⌜´↕¨∘≢)⊸⊔ # diagonals
SortMatrix ← { ∧D >𝕩 }

# Tests
u.UnitFail (SortMatrix ⟨⟨1,7,3⟩,⟨9,8,2⟩,⟨4,5,6⟩⟩) ≡ ⟨⟨8,2,3⟩,⟨9,6,7⟩,⟨4,5,1⟩⟩
u.UnitFail (SortMatrix ⟨⟨0,1⟩,⟨1,2⟩⟩) ≡ ⟨⟨2,1⟩,⟨1,0⟩⟩
u.UnitFail (SortMatrix ⟨⟨1⟩⟩) ≡ ⟨⟨1⟩⟩
