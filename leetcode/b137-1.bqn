# Links: https://leetcode.com/problems/find-the-power-of-k-size-subarrays-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Deltas⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

ResultsArray ← {∧´1=Deltas𝕩?⌈´𝕩;¯1}˘↕

# Tests
UnitTest (3 ResultsArray [1,2,3,4,3,2,5]) ≡ ⟨3,4,-1,-1,-1⟩
UnitTest (4 ResultsArray [2,2,2,2,2]    ) ≡ ⟨-1,-1⟩
UnitTest (2 ResultsArray [3,2,3,2,3,2]  ) ≡ ⟨-1,3,-1,3,-1⟩
