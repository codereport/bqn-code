# Link: https://leetcode.com/problems/minimum-operations-to-make-columns-strictly-increasing

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumOperations  ← { +´⥊+⟜1⊸⌈`⊸-𝕩 } # Explicit
MinimumOperations2 ← +´·⥊+⟜1⊸⌈`⊸-     # Tacit

# Tests
u.UnitTest (MinimumOperations  ∘‿2⥊3‿2‿1‿3‿3‿4‿0‿1)   ≡ 15
u.UnitTest (MinimumOperations  ∘‿3⥊3‿2‿1‿2‿1‿0‿1‿2‿3) ≡ 12
u.UnitTest (MinimumOperations  ∘‿1⥊0‿2‿0‿4‿0)         ≡ 8
u.UnitTest (MinimumOperations2 ∘‿2⥊3‿2‿1‿3‿3‿4‿0‿1)   ≡ 15
u.UnitTest (MinimumOperations2 ∘‿3⥊3‿2‿1‿2‿1‿0‿1‿2‿3) ≡ 12
