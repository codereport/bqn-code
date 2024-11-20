# Link: https://leetcode.com/problems/find-the-xor-of-numbers-which-appear-twice

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Xor ← {⊑𝕨⟨32⟩•bit._xor⟨𝕩⟩} # TODO has to be a better way to do this

DuplicateNumbersXor ← Xor´0‿0∾·⍷(2=·+˝=⌜˜)⊸/

# Tests
UnitTest (DuplicateNumbersXor ⟨1,2,1,3⟩) ≡ 1
UnitTest (DuplicateNumbersXor ⟨1,2,3⟩  ) ≡ 0
UnitTest (DuplicateNumbersXor ⟨1,2,2,1⟩) ≡ 3
