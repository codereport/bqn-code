# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-292

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

TwiceLargest ← (¯1+2×∧´)·(⊑≥2×1↓⊢)∨

# Tests
UnitTest (TwiceLargest 2‿4‿1‿0) ≡ 1
UnitTest (TwiceLargest 1‿2‿3‿4) ≡ -1
