# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-287

⟨Split⟩ ⇐ •Import "../lib/string.bqn"

RemSign  ← (∨´"-+"=⊑)⊸↓
IsNat    ← ∧´∊⟜('0'+↕10)
IsDec    ← (×´×+´)·IsNat¨·'.'⊸Split RemSign
IsInt    ← ∧´·IsNat∘RemSign¨'e'⊸Split
IsNumber ← (⊑'.'⊸∊)◶IsInt‿IsDec

# Tests
•Show IsNumber "1"       # 1
•Show IsNumber "a"       # 0
•Show IsNumber "."       # 0
•Show IsNumber "1.2e4.2" # 0
•Show IsNumber "-1."     # 1
•Show IsNumber "+1e-8"   # 1
•Show IsNumber ".44"     # 1
•Show IsNumber "-."      # 0
•Show IsNumber "-.1"     # 1
•Show IsNumber "-.-1"    # 0
