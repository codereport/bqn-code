# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-273

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

BAfterA ← (⌈´∧⌈`⊸≡)'b'=⊢

# Tests
UnitTest (BAfterA ¨ "aabb"‿"abab"‿"aaa"‿"bbb") ≡ ⟨1,0,0,1⟩
