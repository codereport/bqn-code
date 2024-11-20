# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-277

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

CountCommon ← +´·⥊≡⌜○((1=≠¨)⊸/⊐⊸⊔)

# Tests
UnitTest (⟨"Perl", "is", "my", "friend"⟩ CountCommon ⟨"Perl", "and", "Raku", "are", "friend"⟩                                ) ≡ 2
UnitTest (⟨"Perl", "and", "Python", "are", "very", "similar"⟩ CountCommon ⟨"Python", "is", "top", "in", "guest", "languages"⟩) ≡ 1
UnitTest (⟨"Perl", "is", "imperative", "Lisp", "is", "functional"⟩ CountCommon ⟨"Crystal", "is", "similar", "to", "Ruby"⟩    ) ≡ 0
