# Link: https://leetcode.com/problems/the-two-sneaky-numbers-of-digitville

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

GetSneakyNumbers  ← (0∾·¬·≠´˘2↕⊢)⊸/∧ # Solution 1
GetSneakyNumbers2 ← ¬∘∊⊸/

# Tests
UnitTest (GetSneakyNumbers  ⟨0,1,1,0⟩                ) ≡ ⟨0,1⟩
UnitTest (GetSneakyNumbers  ⟨0,3,2,1,3,2⟩            ) ≡ ⟨2,3⟩
UnitTest (GetSneakyNumbers  ⟨7,1,5,4,3,4,6,0,9,5,8,2⟩) ≡ ⟨4,5⟩
UnitTest (GetSneakyNumbers2 ⟨0,1,1,0⟩                ) ≡ ⟨1,0⟩
UnitTest (GetSneakyNumbers2 ⟨0,3,2,1,3,2⟩            ) ≡ ⟨3,2⟩
UnitTest (GetSneakyNumbers2 ⟨7,1,5,4,3,4,6,0,9,5,8,2⟩) ≡ ⟨4,5⟩
