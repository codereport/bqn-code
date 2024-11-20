# Link: https://leetcode.com/problems/maximize-the-total-height-of-unique-towers

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaximumTotalSum ← { {⊑0∊𝕩?¯1;+´𝕩}(-⟜1⌊⊢)`∨𝕩 }

# Tests
UnitTest (MaximumTotalSum ⟨2,3,4,3⟩) ≡ 10
UnitTest (MaximumTotalSum ⟨15,10⟩  ) ≡ 25
UnitTest (MaximumTotalSum ⟨2,2,1⟩  ) ≡ -1
