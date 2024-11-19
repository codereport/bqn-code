# Link: https://leetcode.com/problems/lexicographically-smallest-string-after-a-swap

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

GetSmallestString ← { 𝕩{0=≠𝕩?𝕨;⌽⌾(2↑(⊑𝕩)⊸↓)𝕨}/(>∧≠○|)´˘2↕•BQN∘⥊¨ 𝕩 }

# Tests
UnitTest (GetSmallestString "45320") ≡ "43520"
UnitTest (GetSmallestString "001")   ≡ "001"
UnitTest (GetSmallestString "20")    ≡ "02"
