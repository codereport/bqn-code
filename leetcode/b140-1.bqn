# Link: https://leetcode.com/problems/minimum-element-after-replacement-with-digit-sum

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinElement ← ⌊´·+´¨·•BQN∘⥊¨¨•Fmt¨

# Tests
UnitTest (MinElement ⟨10,12,13,14⟩) ≡ 1
UnitTest (MinElement ⟨1,2,3,4⟩    ) ≡ 1
UnitTest (MinElement ⟨999,19,199⟩ ) ≡ 10
