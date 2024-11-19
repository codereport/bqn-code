# Link: https://leetcode.com/problems/count-substrings-that-satisfy-k-constraint-i/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

# 1-Liner
CountKConstraintSubstrings ← {+´𝕨⊸{∨´𝕨≥+´˘"10"=⌜𝕩}¨∾1⊸↓¨↑¨↓𝕩}

# Multi-Liner
PowerSlice   ← ∾·1⊸↓¨·↑¨↓
BinaryString ← {∨´𝕨≥+´˘"10"=⌜𝕩}
CountKConstraintSubstrings2 ← {+´𝕨⊸BinaryString¨ PowerSlice 𝕩}

# Tests
UnitTest (1 CountKConstraintSubstrings  "10101"  ) ≡ 12
UnitTest (2 CountKConstraintSubstrings  "1010101") ≡ 25
UnitTest (1 CountKConstraintSubstrings  "11111"  ) ≡ 15
UnitTest (1 CountKConstraintSubstrings2 "10101"  ) ≡ 12
UnitTest (2 CountKConstraintSubstrings2 "1010101") ≡ 25
UnitTest (1 CountKConstraintSubstrings2 "11111"  ) ≡ 15
