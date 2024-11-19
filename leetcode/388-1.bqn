# Link: https://leetcode.com/problems/apple-redistribution-into-boxes/description/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumBoxes  ← +´⊸(1+·+´>)⟜(+`∨)  # Tacit
MinimumBoxes2 ← 1++´∘(+´⊸>⟜(+`∨))  # Tacit 2
MinimumBoxes3 ← { 1++´(+´𝕨)>+`∨𝕩 } # Explicit

# Tests
UnitTest 2 = ⟨1,3,2⟩ MinimumBoxes  ⟨4,3,1,5,2⟩
UnitTest 4 = ⟨5,5,5⟩ MinimumBoxes  ⟨2,4,2,7⟩
UnitTest 2 = ⟨1,3,2⟩ MinimumBoxes2 ⟨4,3,1,5,2⟩
UnitTest 4 = ⟨5,5,5⟩ MinimumBoxes2 ⟨2,4,2,7⟩
UnitTest 2 = ⟨1,3,2⟩ MinimumBoxes3 ⟨4,3,1,5,2⟩
UnitTest 4 = ⟨5,5,5⟩ MinimumBoxes3 ⟨2,4,2,7⟩
