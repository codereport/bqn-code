# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-076

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨PrimesTo⟩ ⇐ •Import "/home/cph/bqn-code/lib/primes.bqn"

PrimeSum ← { +´⊑∘⌽¨(⌊|˜⋈÷)○⊑`0⋈˜¨𝕩∾⟜(⌽PrimesTo)𝕩 }

# Tests
UnitTest (PrimeSum 9  ) ≡ 2
UnitTest (PrimeSum 17 ) ≡ 1
UnitTest (PrimeSum 21 ) ≡ 2
UnitTest (PrimeSum 100) ≡ 2
