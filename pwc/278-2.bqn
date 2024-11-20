# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-278

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

ReverseWord ← (⊑0∾˜1+/∘=)(∧∘↑∾↓)⊢

# Tests
UnitTest ('e' ReverseWord "challenge"  ) ≡ "acehllnge"
UnitTest ('a' ReverseWord "programming") ≡ "agoprrmming"
UnitTest ('b' ReverseWord "champion"   ) ≡ "champion"
