# Link: https://leetcode.com/problems/find-occurrences-of-an-element-in-an-array

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

OccurencesOfElement ← { n‿q‿x ← 𝕩 ⋄ ¯1+((1+↕∘≠)⊸×)+x=n }

# Tests
UnitTest (OccurencesOfElement ⟨1,3,1,7⟩‿⟨1,3,2,4⟩‿1) ≡ ⟨0,-1,2,-1⟩
UnitTest (OccurencesOfElement ⟨1,2,3⟩‿⟨10⟩‿5       ) ≡ ⟨-1,-1,-1⟩
