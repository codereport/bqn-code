# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-348

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

VowelCount  ← +´∊⟜"AEIOUaeiou" 
StringAlike ← (2÷˜≠)⊸(↓((×⌊≡)○VowelCount)↑)

# Tests
u.UnitTest (StringAlike "textbook") ≡ 0
u.UnitTest (StringAlike "book") ≡ 1
u.UnitTest (StringAlike "AbCdEfGh") ≡ 1
u.UnitTest (StringAlike "rhythmmyth") ≡ 0
u.UnitTest (StringAlike "UmpireeAudio") ≡ 0
