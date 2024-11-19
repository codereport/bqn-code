# Link: https://leetcode.com/problems/find-if-digit-game-can-be-won

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

CanAliceWin ← ≠´·+´¨9⊸<⊸⊔

# Tests
UnitTest (CanAliceWin ⟨1,2,3,4,10⟩  ) ≡ 0
UnitTest (CanAliceWin ⟨1,2,3,4,5,14⟩) ≡ 1
UnitTest (CanAliceWin ⟨5,5,5,25⟩    ) ≡ 1
