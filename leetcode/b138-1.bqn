# Link: https://leetcode.com/problems/find-the-key-of-the-numbers

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

GenerateKey ← {10⊸×⊸+˜´⌊˝>{4↑⌽-⟜'0'𝕩}¨•Fmt¨𝕩}
            # {10⊥⌊⌿⌽↑{⌽⍎¨⍕⍵}¨⍵}

# Tests
UnitTest (GenerateKey ⟨1,10,100⟩   ) ≡ 0
UnitTest (GenerateKey ⟨987,879,798⟩) ≡ 777
UnitTest (GenerateKey ⟨1,2,3⟩      ) ≡ 1
