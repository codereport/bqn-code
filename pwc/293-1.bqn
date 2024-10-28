# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-293

⟨_AdjMap⟩ ⇐ •Import "../lib/fun.bqn"

SimilarDominos  ← 1+·+´·≡_AdjMap·∧∧¨
SimilarDominos2 ← +´1⌊¯1+·+´˘·≡⌜˜∧¨

# Tests
•Show SimilarDominos ⟨⟨1,3⟩,⟨3,1⟩,⟨2,4⟩,⟨6,8⟩⟩       # 2
•Show SimilarDominos ⟨⟨1,2⟩,⟨2,1⟩,⟨1,1⟩,⟨1,2⟩,⟨2,2⟩⟩ # 3

•Show SimilarDominos2 ⟨⟨1,3⟩,⟨3,1⟩,⟨2,4⟩,⟨6,8⟩⟩       # 2
•Show SimilarDominos2 ⟨⟨1,2⟩,⟨2,1⟩,⟨1,1⟩,⟨1,2⟩,⟨2,2⟩⟩ # 3
