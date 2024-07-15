# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-278

⟨Words, Unwords⟩ ⇐ •Import "../lib/string.bqn"

SortString ←  Unwords·¯1⊸↓¨·(⍋¯1⊸↑¨)⊸⊏Words

# Tests
•Show SortString "and2 Raku3 cousins5 Perl1 are4"                   # "Perl and Raku are cousins"
•Show SortString "guest6 Python1 most4 the3 popular5 is2 language7" # "Python is the most popular guest language"
•Show SortString "Challenge3 The1 Weekly2"                          # "The Weekly Challenge"
