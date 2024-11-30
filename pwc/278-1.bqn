# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-278

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Words, Unwords⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

SortString ← Unwords·¯1⊸↓¨·(⍋¯1⊸↑¨)⊸⊏Words

# Tests
UnitTest (SortString "and2 Raku3 cousins5 Perl1 are4"                  ) ≡ "Perl and Raku are cousins"
UnitTest (SortString "guest6 Python1 most4 the3 popular5 is2 language7") ≡ "Python is the most popular guest language"
UnitTest (SortString "Challenge3 The1 Weekly2"                         ) ≡ "The Weekly Challenge"
