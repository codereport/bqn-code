u ⇐ •Import "/home/cph/bqn-test/test.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/04-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/04.txt"

# Parsing
Parse ← >•file.Lines

# Solutions
D ← (+⌜´↕¨∘≢)⊸⊔ # diagonals
A ← { +´∾("XMAS"⊸⍷⌽⊸∾)¨∾⟨D⌽,D,<˘⍉,<˘⟩{𝕎𝕩}¨<𝕩 }

Xm ← ≡○((2×↕5)⊸⊏⥊) # x match
m  ← 3‿3⥊"M.M.A.S.S"
B  ← { +´⥊∾(⌽∘⍉⍟(↕4)m)Xm⎉2¨<3‿3↕𝕩 }

# Tests
u.UnitTest (A Parse testInput) ≡ 18
u.UnitTest (A Parse input)     ≡ 2493
u.UnitTest (B Parse testInput) ≡ 9
u.UnitTest (B Parse input)     ≡ 1890
