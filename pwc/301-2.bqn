# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-301

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
b  ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

Hd    ← (|-fn._Xt)○(⌽b.Binary)
SumHd ← +´·∾·∾Hd fn._Tri

# Tests
u.UnitTest (SumHd ⟨4,14,2⟩) ≡ 6
u.UnitTest (SumHd ⟨4,14,4⟩) ≡ 4
