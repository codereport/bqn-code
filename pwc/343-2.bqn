# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-343

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

TeamChampion ← ⊑·/·⌈´⊸=+´˘

# Tests
u.UnitTest (TeamChampion >⟨⟨0, 1, 1⟩, ⟨0, 0, 1⟩, ⟨0, 0, 0⟩⟩)                        ≡ 0
u.UnitTest (TeamChampion >⟨⟨0, 1, 0, 0⟩, ⟨0, 0, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 1, 0⟩⟩) ≡ 3
u.UnitTest (TeamChampion >⟨⟨0, 1, 0, 1⟩, ⟨0, 0, 1, 1⟩, ⟨1, 0, 0, 0⟩, ⟨0, 0, 1, 0⟩⟩) ≡ 0
u.UnitTest (TeamChampion >⟨⟨0, 1, 1⟩, ⟨0, 0, 0⟩, ⟨0, 1, 0⟩⟩)                        ≡ 0
u.UnitTest (TeamChampion >⟨⟨0, 0, 0, 0, 0⟩, ⟨1, 0, 0, 0, 0⟩, ⟨1, 1, 0, 1, 1⟩, ⟨1, 1, 0, 0, 0⟩, ⟨1, 1, 0, 1, 0⟩⟩) ≡ 2
