# Link: https://leetcode.com/problems/find-the-k-th-character-in-string-game-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

KthCharacter ← {(𝕩-1)⊑∾⟜(1⊸+)⍟9 "a"}

# Tests
UnitTest (KthCharacter 5 ) ≡ 'b'
UnitTest (KthCharacter 10) ≡ 'c'
