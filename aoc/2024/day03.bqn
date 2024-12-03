u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput  ← "/home/cph/bqn-code/aoc/2024/data/03-test.txt"
testInputB ← "/home/cph/bqn-code/aoc/2024/data/03-testb.txt"
input      ← "/home/cph/bqn-code/aoc/2024/data/03.txt"

# Parsing
Parse ← •file.Chars

# Solutions
IsInt ← { ∧´𝕩∊'0'+↕10 }
Split ← { ∾")"⊸s.Split¨"mul("s.Split𝕩 }
Prod  ← { n ← ','s.Split𝕩 ⋄ { ((2=≠)∧(∧´IsInt¨))n ? ×´•BQN¨n ; 0 }}
A     ← { +´Prod¨Split𝕩 }
B ← {
    s    ← Split𝕩
    on   ← ("do("≡¯3↑⊢)¨s
    off  ← ("don't("≡¯6↑⊢)¨s
    mask ← 1↓(0⌈1⌊+)`1∾on-off
    +´mask×Prod¨s
}

# Tests
u.UnitTest (A Parse testInput)  ≡ 161
# u.UnitTest (A Parse input)    ≡ 166905464
u.UnitTest (B Parse testInputB) ≡ 48
# u.UnitTest (B Parse input)    ≡ 72948684
