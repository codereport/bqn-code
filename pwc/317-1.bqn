# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-317

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

IsAcronym  ← { 𝕨≡⊑¨𝕩 } # Explicit
IsAcronym2 ← ≡⟜(⊑¨)    # Implicit
# Tests
u.UnitTest ("PWC" IsAcronym  "Perl"‿"Weekly"‿"Challenge") ≡ 1
u.UnitTest ("BCJ" IsAcronym  "Bob"‿"Charlie"‿"Joe")       ≡ 1
u.UnitTest ( "MM" IsAcronym  "Morning"‿"Good")            ≡ 0
u.UnitTest ("PWC" IsAcronym2 "Perl"‿"Weekly"‿"Challenge") ≡ 1
u.UnitTest ("BCJ" IsAcronym2 "Bob"‿"Charlie"‿"Joe")       ≡ 1
u.UnitTest ( "MM" IsAcronym2 "Morning"‿"Good")            ≡ 0
