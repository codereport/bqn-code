# Link: https://leetcode.com/problems/convert-date-to-binary/

⟨UnitTest⟩    ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Split, Join⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
⟨Binary⟩      ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

ConvertDateToBinary ← '-'⊸Join·∾´∘•Fmt¨∘Binary∘•BQN¨'-'⊸Split
#                     {1↓⊃,/'-'∘,¨⍕¨10⊥2(⊥⍣¯1)⍎¨'-'(≠⊆⊢)⍵} # Dyalog APL

# Tests
UnitTest (ConvertDateToBinary "2080-02-29") ≡ "100000100000-10-11101"
UnitTest (ConvertDateToBinary "1900-01-01") ≡ "11101101100-1-1"
