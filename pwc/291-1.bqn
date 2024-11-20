# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-291

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MiddleIndex  ← {⊑¯1∾˜/((»+`)=(»+`)⌾⌽)𝕩} # Explicit
MiddleIndex2 ← ⊑¯1∾˜·/(»+`)=(»+`)⌾⌽     # Tacit
MiddleIndex3 ← ⊑¯1∾˜·/(»+`){𝔽=𝔽⌾⌽}      # Tacit 2

# Tests
UnitTest (MiddleIndex ⟨2, 3, -1, 8, 4⟩) ≡ 3
UnitTest (MiddleIndex ⟨1, -1, 4⟩      ) ≡ 2
UnitTest (MiddleIndex ⟨2, 5⟩          ) ≡ -1

UnitTest (MiddleIndex2 ⟨2, 3, -1, 8, 4⟩) ≡ 3
UnitTest (MiddleIndex2 ⟨1, -1, 4⟩      ) ≡ 2
UnitTest (MiddleIndex2 ⟨2, 5⟩          ) ≡ -1

UnitTest (MiddleIndex3 ⟨2, 3, -1, 8, 4⟩) ≡ 3
UnitTest (MiddleIndex3 ⟨1, -1, 4⟩      ) ≡ 2
UnitTest (MiddleIndex3 ⟨2, 5⟩          ) ≡ -1
