# Link: https://leetcode.com/problems/find-the-original-typed-string-i/description/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

PossibleStringCount  ← +´⌾(-⟜1)·≠¨fn.Group
PossibleStringCount2 ← +´⌾(-⟜1)·(⊑∘⌽˘)fn.Rle
PossibleStringCount3 ← +´⌾(-⟜1)·⥊1↓˘fn.Rle

# Tests
UnitTest (PossibleStringCount  "abbcccc") = 5
UnitTest (PossibleStringCount  "abcd"   ) = 1
UnitTest (PossibleStringCount  "aaaa"   ) = 4

UnitTest (PossibleStringCount2 "abbcccc") = 5
UnitTest (PossibleStringCount2 "abcd"   ) = 1
UnitTest (PossibleStringCount2 "aaaa"   ) = 4

UnitTest (PossibleStringCount3 "abbcccc") = 5
UnitTest (PossibleStringCount3 "abcd"   ) = 1
UnitTest (PossibleStringCount3 "aaaa"   ) = 4
