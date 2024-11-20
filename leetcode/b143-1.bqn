# Link: https://leetcode.com/problems/smallest-divisible-digit-product-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Digits⟩ ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

SmallestNumber ← { 0=𝕨|×´Digits𝕩 ? 𝕩 ; 𝕨𝕊1+𝕩 }

# Tests
UnitTest (2 SmallestNumber 10) ≡ 10
UnitTest (3 SmallestNumber 15) ≡ 16