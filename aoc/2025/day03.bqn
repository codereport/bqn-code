u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/03-test.txt"
input     ← •path∾"/data/03.txt"

# Parsing
Parse ← -⟜'0'¨•file.Lines

# Solutions
A  ← +´{⌈´∾{+´10‿1×𝕨‿𝕩} fn._Tri 𝕩 }¨
B  ← ⊢

# Tests
u.UnitTest (A Parse testInput) ≡ 357
u.UnitTest (A Parse input)     ≡ 21139440284
# u.UnitTest (B Parse testInput) ≡ 4174379265
# u.UnitTest (B Parse input)   ≡ 23150395
