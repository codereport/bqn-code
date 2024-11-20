# Link: https://leetcode.com/problems/maximum-possible-number-by-binary-concatenation

⟨UnitTest⟩        ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Permutations⟩    ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"
⟨Binary, Decimal⟩ ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

MaxGoodNumber ← ⌈´·Decimal∘∾∘(Binary¨)˘Permutations

# Tests
UnitTest (MaxGoodNumber ⟨1,2,3⟩ ) ≡ 30
UnitTest (MaxGoodNumber ⟨2,8,16⟩) ≡ 1296
