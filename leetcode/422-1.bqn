# Link: https://leetcode.com/problems/check-balanced-string

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

IsBalanced  ← (0‿1⥊˜≠)⊸×⊸((|∘-=⊣)○(+´))-⟜'0'¨
IsBalanced2 ← (2|↕∘≠)⊸×⊸((|∘-=⊣)○(+´))-⟜'0'¨
IsBalanced3 ← =´·+´¨·(¬⊸⋈2|↕∘≠)⊸(×⚇1)-⟜'0'¨
IsBalanced4 ← =´·+´˘·(¬⊸≍2|↕∘≠)⊸(×⎉1)-⟜'0'¨

# Tests
UnitTest (IsBalanced  "1234")  = 0
UnitTest (IsBalanced  "24123") = 1

UnitTest (IsBalanced2 "1234")  = 0
UnitTest (IsBalanced2 "24123") = 1

UnitTest (IsBalanced3 "1234")  = 0
UnitTest (IsBalanced3 "24123") = 1

UnitTest (IsBalanced4 "1234")  = 0
UnitTest (IsBalanced4 "24123") = 1
