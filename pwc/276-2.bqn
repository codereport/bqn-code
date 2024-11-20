# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-276

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxFreq ← (+´⌈´⊸=⊸×)·≠¨⊐⊸⊔

# Tests

UnitTest (MaxFreq ⟨1, 2, 2, 4, 1, 5⟩) ≡ 4
UnitTest (MaxFreq ⟨1, 2, 3, 4, 5⟩   ) ≡ 5
