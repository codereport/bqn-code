# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-287

u ⇐ •Import "/home/cph/bqn-test/test.bqn"
s ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

RmSgn ← (∨´"-+"=⊑)⊸↓
IsDec ← (×´×+´)·s.IsNat¨·(×≠¨)⊸/·'.'⊸s.Split RmSgn
IsInt ← ∧´·s.IsNat∘RmSgn¨'e'⊸s.Split
IsNum ← (⊑'.'⊸∊)◶IsInt‿IsDec

# Tests
u.UnitTest 1 ≡ IsNum "1"
u.UnitTest 0 ≡ IsNum "a"
u.UnitTest 0 ≡ IsNum "."
u.UnitTest 0 ≡ IsNum "1.2e4.2"
u.UnitTest 1 ≡ IsNum "-1."
u.UnitTest 1 ≡ IsNum "+1e-8"
u.UnitTest 1 ≡ IsNum ".44"
u.UnitTest 0 ≡ IsNum "-."
u.UnitTest 1 ≡ IsNum "-.1"
u.UnitTest 0 ≡ IsNum "-.-1"
