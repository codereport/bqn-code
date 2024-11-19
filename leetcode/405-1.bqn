# Link: https://leetcode.com/problems/find-the-encrypted-string/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

GetEncryptedString ← ⌽

# Tests
UnitTest (3 GetEncryptedString "dart") ≡ "tdar"
UnitTest (1 GetEncryptedString "aaa" ) ≡ "aaa"
UnitTest (4 GetEncryptedString "byd" ) ≡ "ydb"
