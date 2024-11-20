# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-078

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

LeftRotate ← >⌽¨⟜<

# Tests

res ← >⟨⟨40,50,10,20,30⟩,⟨50,10,20,30,40⟩⟩
UnitTest (⟨3,4⟩ LeftRotate ⟨10,20,30,40,50⟩) ≡ res
res2 ← >⟨⟨4,2,6,3,7⟩,⟨6,3,7,4,2⟩,⟨3,7,4,2,6⟩⟩
UnitTest (⟨1,3,4⟩ LeftRotate ⟨7,4,2,6,3⟩) ≡ res2
