# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-293

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_AdjMap⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

SimilarDominos  ← 1+·+´·≡¨_AdjMap·∧∧¨
SimilarDominos2 ← +´1⌊¯1+·+´˘·≡⌜˜∧¨

# Tests
UnitTest (SimilarDominos ⟨⟨1,3⟩,⟨3,1⟩,⟨2,4⟩,⟨6,8⟩⟩      ) ≡ 2
UnitTest (SimilarDominos ⟨⟨1,2⟩,⟨2,1⟩,⟨1,1⟩,⟨1,2⟩,⟨2,2⟩⟩) ≡ 3

UnitTest (SimilarDominos2 ⟨⟨1,3⟩,⟨3,1⟩,⟨2,4⟩,⟨6,8⟩⟩      ) ≡ 2
UnitTest (SimilarDominos2 ⟨⟨1,2⟩,⟨2,1⟩,⟨1,1⟩,⟨1,2⟩,⟨2,2⟩⟩) ≡ 3
