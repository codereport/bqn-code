# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-289

⟨Words, Unwords⟩ ⇐ •Import "../lib/string.bqn"

Shuffle ← •rand.Deal∘≠⊸⊏
Jumble  ← Unwords·Shuffle⌾(¯1↓1↓⊢)¨Words

# Tests
•Show Jumble "This is a bunch a text that should be jumbled"
