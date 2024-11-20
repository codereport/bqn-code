# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-290

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Digits⟩ ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

Luhn ← {
    d ← •BQN∘⥊¨𝕩 # digits
    p ← ⊢´d      # payload
    M ← ⌽2‿1⥊˜≠  # mask
    p=10|-+´∾Digits¨M⊸×¯1↓d
}

# Tests
UnitTest (Luhn "17893729974"     ) ≡ 1
UnitTest (Luhn "4137894711755904") ≡ 1
UnitTest (Luhn "4137897411755904") ≡ 0
