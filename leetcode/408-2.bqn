# Link: https://leetcode.com/problems/find-the-count-of-numbers-which-are-not-special

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

To ← ⊣+(↕1+-˜)
Pd ← 2⊸=·+´0=↕⊸|
NonSpecialCount ← +´·¬·Pd¨To

# Tests
UnitTest (5 NonSpecialCount  7) ≡ 3
UnitTest (4 NonSpecialCount 16) ≡ 11
