# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-323

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

IncrementDecrement ← +´·-˝"+-"=⌜⊑∘∧¨

# Tests
u.UnitTest (IncrementDecrement ⟨"--x", "x++", "x++"⟩)        ≡ 1
u.UnitTest (IncrementDecrement ⟨"x++", "++x", "x++"⟩)        ≡ 3
u.UnitTest (IncrementDecrement ⟨"x++", "++x", "--x", "x--"⟩) ≡ 0
