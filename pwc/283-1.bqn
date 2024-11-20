# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-283

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

UniqueNumber ← ⊑·/1=·≠¨⊔

# Tests
UnitTest (UniqueNumber ⟨3, 3, 1⟩         ) ≡ 1
UnitTest (UniqueNumber ⟨3, 2, 4, 2, 4⟩   ) ≡ 3
UnitTest (UniqueNumber ⟨1⟩               ) ≡ 1
UnitTest (UniqueNumber ⟨4, 3, 1, 1, 1, 4⟩) ≡ 3
