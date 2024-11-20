# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-282

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Lower⟩  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"
⟨Differ⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

Changes ← +´ · Differ Lower

# Tests

UnitTest (Changes "pPeERrLl") ≡ 3
UnitTest (Changes "rRr"     ) ≡ 0
UnitTest (Changes "GoO"     ) ≡ 1
