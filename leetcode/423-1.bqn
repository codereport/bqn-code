# Link: https://leetcode.com/problems/adjacent-increasing-subarrays-detection-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_AdjMap, _ChunkBy⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

HasIncreasingSubarrays  ← {∨´2=+_AdjMap𝕨=≠¨(¯1=-)_ChunkBy𝕩}  # Explicit
HasIncreasingSubarrays2 ← ∨´2=·+_AdjMap⊣=·≠¨·(¯1=-)_ChunkBy⊢ # Tacit

# Tests
UnitTest (3 HasIncreasingSubarrays ⟨2,5,7,8,9,2,3,4,3,1⟩) ≡ 1
UnitTest (5 HasIncreasingSubarrays ⟨1,2,3,4,4,4,4,5,6,7⟩) ≡ 0

UnitTest (3 HasIncreasingSubarrays2 ⟨2,5,7,8,9,2,3,4,3,1⟩) ≡ 1
UnitTest (5 HasIncreasingSubarrays2 ⟨1,2,3,4,4,4,4,5,6,7⟩) ≡ 0
