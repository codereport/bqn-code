# Link: https://leetcode.com/problems/report-spam-message

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

IsSpam ← 2≤·+´∊

# Tests
UnitTest (                 ⟨"world","hello"⟩ IsSpam ⟨"hello","world","leetcode"⟩ ) ≡ 1
UnitTest (⟨"world","programming","leetcode"⟩ IsSpam ⟨"hello","programming","fun"⟩) ≡ 0
