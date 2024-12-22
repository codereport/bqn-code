u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

miniInput ← •path∾"/data/16-mini.txt"
testInput ← •path∾"/data/16-test.txt"
input     ← •path∾"/data/16.txt"

# Parsing
Parse ← >•file.Lines

# Solutions (A only works on the small tests)
Turns ← +´·{2=⌊´≠∘⍷¨<˘⍉>𝕩}˘3↕⊢
Score ← (1-˜≠)+1000×1+Turns
A     ← { ⌊´Score¨((⊑∘fn.I=)⟜𝕩¨"SE")h.AllPaths 0-'#'=𝕩 }
B     ← ⊢

# Tests
u.UnitTest (A Parse miniInput) ≡ 7036
u.UnitTest (A Parse testInput) ≡ 11048
# u.UnitTest (A Parse input)     ≡ 1
# u.UnitTest (B Parse testInput) ≡ 1
# u.UnitTest (B Parse input)     ≡ 1
