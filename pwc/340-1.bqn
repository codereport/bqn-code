# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-340

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

RemoveDuplicates ← (∾·(1<≠)◶⟨⊢,2⊸↓⟩¨fn.Group)⍟≠

# Tests
u.UnitTest (RemoveDuplicates "abbaca")   ≡ "ca"
u.UnitTest (RemoveDuplicates "azxxzy")   ≡ "ay"
u.UnitTest (RemoveDuplicates "aaaaaaaa") ≡ ""
u.UnitTest (RemoveDuplicates "aabccba")  ≡ "a"
u.UnitTest (RemoveDuplicates "abcddcba") ≡ ""
