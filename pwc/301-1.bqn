# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-301

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

LargestNumber ← ⌈´·•BQN∘∾˘·fn.Permutations•Fmt¨

# Tests
u.UnitTest (LargestNumber ⟨20,3⟩)        ≡ 320
u.UnitTest (LargestNumber ⟨3,30,34,5,9⟩) ≡ 9534330
