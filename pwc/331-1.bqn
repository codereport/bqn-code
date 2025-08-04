# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-331

u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

LastWordLength ← ≠·⊢´s.Words

# Tests
u.UnitTest (LastWordLength "The Weekly Challenge") ≡ 9
u.UnitTest (LastWordLength "   Hello   World    ") ≡ 5
u.UnitTest (LastWordLength "Let's begin the fun") ≡ 3
