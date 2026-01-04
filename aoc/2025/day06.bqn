u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

testInput ← •path∾"/data/06-test.txt"
input     ← •path∾"/data/06.txt"

# Parsing
numsA‿op←¯1(↓⋈⊑)•file.Lines testInput
numsA ↩ •BQN¨>s.Words¨numsA
numsB ← (¬2|·↕≠)⊸/(0=≠)fn._ChunkKey s.Ints¨<˘¯1↓˘⍉>•file.Lines testInput
op    ↩ ⟨+,×⟩⊏˜'*'=' '⊸≠⊸/op

# Solutions
# A ← +´·(⊑("+"≡⊣)◶⟨×´⊢,+´⊢⟩1⊸↓)˘·•BQN¨⌾(1⊸↓˘)¯1⌽˘⍉ # original
a ← +´(<˘⍉numsA) {𝕏´𝕨}¨op
b ← ⊑+´numsB {𝕏´𝕨}¨op

# Tests
u.UnitTest a ≡ 4277556
# u.UnitTest (A Parse input)   ≡ 6957525317641
u.UnitTest b ≡ 3263827
# u.UnitTest (B Parse input)   ≡ 13215665360076
