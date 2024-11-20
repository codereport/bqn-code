# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-279

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

SortLetters ← ⍋⊸⊏

# Tests
UnitTest (      ⟨3, 2, 1, 4⟩ SortLetters "REPL"  ) ≡ "PERL"
UnitTest (      ⟨2, 4, 1, 3⟩ SortLetters "AURK"  ) ≡ "RAKU"
UnitTest (⟨5, 4, 2, 6, 1, 3⟩ SortLetters "OHYNPT") ≡ "PYTHON"
