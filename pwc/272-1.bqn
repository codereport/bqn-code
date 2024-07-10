# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-272/

⟨Join, Split⟩ ⇐ •Import "../lib/string.bqn"

DefangIp ← "[.]" Join '.' Split ⊢

# Tests
•Show DefangIp "1.1.1.1"     # "1[.]1[.]1[.]1"
•Show DefangIp "255.101.1.0" # "255[.]101[.]1[.]0"
