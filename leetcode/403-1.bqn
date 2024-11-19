# Link: https://leetcode.com/problems/minimum-average-of-smallest-and-largest-elements

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

# Solution 1
H ← ÷⟜2
MinAvg ← H·⌊´H∘≠(↑+⌽∘↓)∧

# Solution 2
MinAvg2 ← 2÷˜·⌊´·+˝·⌽⌾⊏2‿∘⥊∧

# Tests
UnitTest (MinAvg  ⟨7,8,3,4,15,13,4,1⟩) = 5.5
UnitTest (MinAvg  ⟨1,9,8,3,10,5⟩     ) = 5.5
UnitTest (MinAvg  ⟨1,2,3,7,8,9⟩      ) = 5.0
UnitTest (MinAvg2 ⟨7,8,3,4,15,13,4,1⟩) = 5.5
UnitTest (MinAvg2 ⟨1,9,8,3,10,5⟩     ) = 5.5
UnitTest (MinAvg2 ⟨1,2,3,7,8,9⟩      ) = 5.0
