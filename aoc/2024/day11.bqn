u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← "/home/cph/bqn-code/aoc/2024/data/11-test.txt"
input     ← "/home/cph/bqn-code/aoc/2024/data/11.txt"

# Parsing
Parse ← s.Ints•file.Chars

# Solutions
Cut    ← (÷⟜2≠)⊸(↑∾○•Parsefloat↓)
Blink  ← { 0=𝕩 ? 1 ; 0=2|≠•Repr𝕩 ? Cut•Repr𝕩 ; 2024×𝕩 }
Blinks ← { ≠((1<≡)◶⊢‿∾Blink¨)⍟𝕨𝕩 }

A ← 25⊸Blinks
B ← 75⊸Blinks

# Tests
u.UnitTest (A Parse testInput) ≡ 55312
u.UnitTest (A Parse input)     ≡ 203228
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
