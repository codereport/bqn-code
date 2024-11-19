# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-287

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Split⟩    ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

RmSgn ← (∨´"-+"=⊑)⊸↓
IsNat ← ∧´∊⟜('0'+↕10)
IsDec ← (×´×+´)·IsNat¨·(0<≠¨)⊸/·'.'⊸Split RmSgn
IsInt ← ∧´·IsNat∘RmSgn¨'e'⊸Split
IsNum ← (⊑'.'⊸∊)◶IsInt‿IsDec

# Tests
UnitTest 1 ≡ IsNum "1"
UnitTest 0 ≡ IsNum "a"
UnitTest 0 ≡ IsNum "."
UnitTest 0 ≡ IsNum "1.2e4.2"
UnitTest 1 ≡ IsNum "-1."
UnitTest 1 ≡ IsNum "+1e-8"
UnitTest 1 ≡ IsNum ".44"
UnitTest 0 ≡ IsNum "-."
UnitTest 1 ≡ IsNum "-.1"
UnitTest 0 ≡ IsNum "-.-1"
