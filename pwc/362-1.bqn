# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-362

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

EchoChamber ← ⊢/˜1+↕∘≠

# Tests
u.UnitTest (EchoChamber "abca")  ≡ "abbcccaaaa"
u.UnitTest (EchoChamber "xyz")   ≡ "xyyzzz"
u.UnitTest (EchoChamber "hello") ≡ "heelllllllooooo"
u.UnitTest (EchoChamber "a")     ≡ "a"
