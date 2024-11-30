# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-288

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

# Slow One-Line Solution
ClosestPalindrome ← {⊑(⌽⊸≡•Fmt)¨⊸/∾<˘⍉>((•BQN𝕩)(-⋈+)(1+↕))10⋆≠𝕩}

# Faster Solution
Find               ← { 𝕩 < 0 ? ¯∞ ; ⌽⊸≡•Fmt 𝕩 ? 𝕩 ; 𝕨 𝕊 𝕨 + 𝕩 }
ClosestPalindrome2 ← { ⊑(⌊´⊸=·|t-⊢)⊸/¯1 ⋈○(Find⟜(+⟜(t ← •BQN𝕩))) 1 }

# Tests
UnitTest (ClosestPalindrome "123" ) ≡ 121
UnitTest (ClosestPalindrome "2"   ) ≡ 1
UnitTest (ClosestPalindrome "1400") ≡ 1441
UnitTest (ClosestPalindrome "1001") ≡ 999
UnitTest (ClosestPalindrome "999" ) ≡ 1001
UnitTest (ClosestPalindrome "0"   ) ≡ 1

UnitTest (ClosestPalindrome2 "123"    ) ≡ 121
UnitTest (ClosestPalindrome2 "2"      ) ≡ 1
UnitTest (ClosestPalindrome2 "1400"   ) ≡ 1441
UnitTest (ClosestPalindrome2 "1001"   ) ≡ 999
UnitTest (ClosestPalindrome2 "999"    ) ≡ 1001
UnitTest (ClosestPalindrome2 "0"      ) ≡ 1
UnitTest (ClosestPalindrome2 "1231234") ≡ 1231321
