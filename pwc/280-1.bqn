# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-280

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

AppearsTwice ← ⊑¬∘∊⊸/

# Tests
UnitTest (AppearsTwice "acbddbca") ≡ 'd'
UnitTest (AppearsTwice "abccd"   ) ≡ 'c'
UnitTest (AppearsTwice "abcdabbb") ≡ 'a'
