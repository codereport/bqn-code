# Link: https://leetcode.com/problems/maximum-subarray-with-equal-products

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxLength  ← { ⌈´≠¨(⊢/˜×´=•math.LCM´×•math.GCD´)¨1↓⍷∾↓¨↑𝕩 } # original
MaxLength2 ← { ⌈´(≠××´=•math.LCM´×•math.GCD´)¨1↓⍷∾↓¨↑𝕩 }    # after apl

# Tests
u.UnitTest (MaxLength  ⟨1,2,1,2,1,1,1⟩) ≡ 5
u.UnitTest (MaxLength  ⟨2,3,4,5,6⟩)     ≡ 3
u.UnitTest (MaxLength  ⟨1,2,3,1,4,5,1⟩) ≡ 5
u.UnitTest (MaxLength2 ⟨1,2,1,2,1,1,1⟩) ≡ 5
u.UnitTest (MaxLength2 ⟨2,3,4,5,6⟩)     ≡ 3
u.UnitTest (MaxLength2 ⟨1,2,3,1,4,5,1⟩) ≡ 5
