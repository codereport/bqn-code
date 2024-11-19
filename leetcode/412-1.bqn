# Link: https://leetcode.com/problems/final-array-state-after-k-multiplication-operations-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

GetFinalState ← { 𝕊⟨nums, k, m⟩:
    (⊢×1⌈m×∊∧⌊´⊸=)⍟k nums
  # (⊢×1⌈m×≠∧⌊/=⊢)⍣k nums (solution in Dyalog APL)
}

# Tests
UnitTest (GetFinalState ⟨⟨2,1,3,5,6⟩, 5, 2⟩) ≡ ⟨8,4,6,5,6⟩
UnitTest (GetFinalState ⟨⟨1,2⟩,3,4⟩        ) ≡ ⟨16,8⟩
