u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
h  ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

in ← "/home/cph/bqn-code/aoc/2024/data/08-test.txt"
# in ← "/home/cph/bqn-code/aoc/2024/data/08.txt"

# Parsing
g ← >•file.Lines in # grid

# Solutions
c   ← (⊐⊑⟜g)⊸⊔fn.I'.'≠g                      # coordinates
_An ← { g⊸h.Ib¨⊸/∾∾+⚇1⟜(⋈⟜-·𝔽-´)¨fn.Pairs𝕩 } # antinode

_Solve ← { ≠⍷∾𝔽¨𝕩 }
A      ← ({⟨𝕩⟩}       _An) _Solve
B      ← ({𝕩⊸×¨↕⌈´≢g} _An) _Solve

# Tests
u.UnitTest (A c) ≡ 14
u.UnitTest (B c) ≡ 34
# u.UnitTest (A Parse in) ≡ 293
# u.UnitTest (B Parse in) ≡ 934
