u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput  ← •path∾"/data/03-test.txt"
testInputB ← •path∾"/data/03-testb.txt"
input      ← •path∾"/data/03.txt"

# Parsing
Parse ← •file.Chars

# Solutions
Split ← ∾·")"⊸s.Split¨"mul("s.Split⊢
Prod  ← ((2=≠)∧(∧´s.IsNat¨))◶⟨0,×´•BQN¨⟩','⊸s.Split
A     ← +´·Prod¨Split
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
