# Link: https://leetcode.com/problems/find-the-maximum-factor-score-of-array

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Score    ← •math.GCD´×•math.LCM´
MaxScore ← ⌈´·Score¨({<˘≠⌜˜↕≠𝕩}/¨<)∾<

# Tests
UnitTest (MaxScore ⟨2,4,8,16⟩ ) ≡ 64
UnitTest (MaxScore ⟨1,2,3,4,5⟩) ≡ 60
