# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-272/

⟨UnitTest⟩    ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Join, Split⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

DefangIp ← "[.]" Join '.' Split ⊢

# Tests
UnitTest (DefangIp "1.1.1.1")     ≡ "1[.]1[.]1[.]1"
UnitTest (DefangIp "255.101.1.0") ≡ "255[.]101[.]1[.]0"
