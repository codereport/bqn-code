u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/05-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/05.txt"

# Parsing
Parse ← {
    n ← ⊑/⟨⟩⊸≡¨l ← •file.Lines𝕩
    (•BQN¨¨'|'⊸s.Split¨ n↑l)‿(•BQN¨¨','⊸s.Split¨ (n+1)↓l)
}
o‿l ← Parse testInput # orders‿lines

# Solutions
Co     ← (∨´·¬∊)∨(≤´⊐˜) # correct order
Aco    ← { ∧´Co⟜𝕩¨o }   # all correct order
Middle ← ⊑(⌊2÷˜≠)⊸⊏
A      ← +´Aco◶⟨0,Middle⟩¨

Insert ← ↑´∘⊢∾⊣∾↓´∘⊢
Build  ← { l𝕊s: { ×≠l ? (1↓l)Build⊑Aco¨⊸/{(⊑l)Insert𝕩‿s}¨↕1+≠s ; s }}
Find   ← Middle Build⟜⟨⟩
B      ← +´·Find¨¬∘Aco¨⊸/

# Tests
u.UnitTest (A l) ≡ 143
# u.UnitTest (A l) ≡ 5268
u.UnitTest (B l) ≡ 123
# u.UnitTest (B l) ≡ 5799
