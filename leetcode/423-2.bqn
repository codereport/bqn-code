# Link: https://leetcode.com/problems/adjacent-increasing-subarrays-detection-ii

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_AdjMap, _ChunkBy⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

MaxIncreasingSubarrays  ← {(⌊_AdjMap⌈○(⌈´)(⌊÷⟜2))≠¨(¯1=-)_ChunkBy𝕩} # Explicit
MaxIncreasingSubarrays2 ← (⌊_AdjMap⌈○(⌈´)(⌊÷⟜2))·≠¨(¯1=-)_ChunkBy   # Tacit

# Tests
UnitTest (MaxIncreasingSubarrays ⟨2,5,7,8,9,2,3,4,3,1⟩) = 3
UnitTest (MaxIncreasingSubarrays ⟨1,2,3,4,4,4,4,5,6,7⟩) = 2

UnitTest (MaxIncreasingSubarrays2 ⟨2,5,7,8,9,2,3,4,3,1⟩) = 3
UnitTest (MaxIncreasingSubarrays2 ⟨1,2,3,4,4,4,4,5,6,7⟩) = 2
