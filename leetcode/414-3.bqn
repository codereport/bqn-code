# Link: https://leetcode.com/problems/reach-end-of-array-with-max-score/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

FindMaximumScore  ← +´¯1↓⌈`
FindMaximumScore2 ← +´·»⌈`

# Tests
UnitTest (FindMaximumScore  ⟨1,3,1,5⟩  ) ≡ 7
UnitTest (FindMaximumScore  ⟨4,3,1,3,2⟩) ≡ 16
UnitTest (FindMaximumScore2 ⟨1,3,1,5⟩  ) ≡ 7
UnitTest (FindMaximumScore2 ⟨4,3,1,3,2⟩) ≡ 16
