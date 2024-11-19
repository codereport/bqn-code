# Link: https://leetcode.com/problems/find-the-number-of-good-pairs-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

NumberOfPairs   ← { +´⥊(0=⊣|˜𝕨×⊢)⌜´𝕩 }
NumberOfPairs2  ← { +´⥊0=|˜⌜⟜(𝕨⊸×)´𝕩 } # Solution 2 Thanks to Marshall
_NumberOfPairs3 ← { +´·⥊0=|˜⌜⟜(𝕗⊸×) }  # Solution 3 Thanks to Marshall

# Tests
UnitTest 5 = 1 NumberOfPairs  ⟨1,3,4⟩‿⟨1,3,4⟩
UnitTest 2 = 3 NumberOfPairs  ⟨1,2,4,12⟩‿⟨2,4⟩
UnitTest 5 = 1 NumberOfPairs2 ⟨1,3,4⟩‿⟨1,3,4⟩
UnitTest 2 = 3 NumberOfPairs2 ⟨1,2,4,12⟩‿⟨2,4⟩
UnitTest 5 =    ⟨1,3,4⟩ 1 _NumberOfPairs3 ⟨1,3,4⟩
UnitTest 2 = ⟨1,2,4,12⟩ 3 _NumberOfPairs3 ⟨2,4⟩
