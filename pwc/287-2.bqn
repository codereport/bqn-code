# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-287

⟨Split⟩ ⇐ •Import "../lib/string.bqn"

RmSgn ← (∨´"-+"=⊑)⊸↓
IsNat ← ∧´∊⟜('0'+↕10)
IsDec ← (×´×+´)·IsNat¨·'.'⊸Split RemSign
IsInt ← ∧´·IsNat∘RemSign¨'e'⊸Split
IsNum ← (⊑'.'⊸∊)◶IsInt‿IsDec

# Tests
•Show IsNum "1"       # 1
•Show IsNum "a"       # 0
•Show IsNum "."       # 0
•Show IsNum "1.2e4.2" # 0
•Show IsNum "-1."     # 1
•Show IsNum "+1e-8"   # 1
•Show IsNum ".44"     # 1
•Show IsNum "-."      # 0
•Show IsNum "-.1"     # 1
•Show IsNum "-.-1"    # 0
