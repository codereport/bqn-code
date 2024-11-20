# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-082

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

Factors       ← (1+↕)(⊣/˜0=|)⊢
CommonFactors ← (∊/⊣)○Factors

# Tests
UnitTest (12 CommonFactors 18) ≡ ⟨ 1,2,3,6 ⟩
UnitTest (18 CommonFactors 23) ≡ ⟨ 1 ⟩
