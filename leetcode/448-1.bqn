# Link: https://leetcode.com/problems/maximum-product-of-two-digits/description/

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

MaxProduct  ← { ×´2↑∨-⟜'0'¨•Fmt𝕩 } # Explicit
MaxProduct2 ← ×´2↑·∨·-⟜'0'¨•Fmt    # Tacit

# Tests
u.UnitTest (MaxProduct 31)  ≡ 3
u.UnitTest (MaxProduct 22)  ≡ 4
u.UnitTest (MaxProduct 124) ≡ 8
u.UnitTest (MaxProduct2 31)  ≡ 3
u.UnitTest (MaxProduct2 22)  ≡ 4
u.UnitTest (MaxProduct2 124) ≡ 8
