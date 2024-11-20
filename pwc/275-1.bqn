# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-275

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Lower, Words⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

CanType ← +´·¬·⌈´¨·∨˝=⌜⟜Words○Lower

# Tests
UnitTest ("la" CanType "Perl Weekly Challenge"   ) ≡ 0
UnitTest ( "a" CanType "Perl and Raku"           ) ≡ 1
UnitTest ("lo" CanType "Well done Team PWC"      ) ≡ 2
UnitTest ( "T" CanType "The joys of polyglottism") ≡ 2
