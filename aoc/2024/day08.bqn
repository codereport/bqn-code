u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

in ← "/home/cph/bqn-code/aoc/2024/data/08-test.txt"
# in ← "/home/cph/bqn-code/aoc/2024/data/08.txt"

# Parsing
g ← >•file.Lines in # grid

# Solutions
c   ← (⊐⊑⟜g)⊸⊔fn.Idxs'.'≠g          # coordinates
Ib  ← ∧´(0‿0⊸≤)∾(≢g)⊸>              # in bounds
Dx  ← { a‿b𝕊d:(a⊸+⋈b⊸-)¨d }         # delta
_An ← { Ib¨⊸/∾∾Dx⟜(𝔽-´)¨fn.Pairs𝕩 } # antinode

_Solve ← { ≠⍷∾𝔽¨𝕩 }
A      ← ({⟨𝕩⟩}        _An) _Solve
B      ← ({𝕩⊸×¨↕⌈´≢g} _An ) _Solve

# Tests
u.UnitTest (A c) ≡ 14
u.UnitTest (B c) ≡ 34
# u.UnitTest (A Parse in) ≡ 293
# u.UnitTest (B Parse in) ≡ 934
