# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-283

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

DigitCountValue ← (+˝=⌜⟜(↕≠))⊸≡

# Tests
UnitTest (DigitCountValue ⟨1, 2, 1, 0⟩) ≡ 1
UnitTest (DigitCountValue ⟨0, 3, 0⟩   ) ≡ 0
