# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-297

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumMoves  ← { (>´∘⊢-˜(+´·|(a-1)⊸-))𝕩⊐a ← 1‿(≠𝕩) }
MinimumMoves2 ← { (>´b)-˜+´|(a-1)-b ← 𝕩⊐a ← 1‿(≠𝕩) }

# Tests
UnitTest (MinimumMoves 2‿1‿4‿3) ≡ 2
UnitTest (MinimumMoves 2‿4‿1‿3) ≡ 3
UnitTest (MinimumMoves 1+↕5)    ≡ 0

UnitTest (MinimumMoves2 2‿1‿4‿3) ≡ 2
UnitTest (MinimumMoves2 2‿4‿1‿3) ≡ 3
UnitTest (MinimumMoves2 1+↕5)    ≡ 0
