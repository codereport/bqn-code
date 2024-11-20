# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-078

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

LeaderElement ← ⍷⌈`⌾⌽

# Tests
UnitTest (LeaderElement ⟨9, 10, 7, 5, 6, 1⟩) ≡ ⟨10, 7, 6, 1⟩
UnitTest (LeaderElement ⟨3, 4, 5⟩          ) ≡ ⟨5⟩
