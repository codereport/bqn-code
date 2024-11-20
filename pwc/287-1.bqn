# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-287

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Group⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"
⟨IsDigit, IsLower, IsUpper⟩ ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

MakeStrong ← {
    r ← +´⌊3÷˜≠¨Group𝕩 # replacements for repeating
    a ← 0⌈6-≠𝕩         # additions for length
    l ← ∨´IsLower¨𝕩    # has upper
    u ← ∨´IsUpper¨𝕩    # has lower
    d ← ∨´IsDigit¨𝕩    # has digit
    (r+a)⌈+´¬l∾u∾d
}

# Tests
UnitTest (MakeStrong "a"        ) ≡ 5
UnitTest (MakeStrong "aB2"      ) ≡ 3
UnitTest (MakeStrong "PaaSW0rd" ) ≡ 0
UnitTest (MakeStrong "Paaasw0rd") ≡ 1
UnitTest (MakeStrong "aaaaa"    ) ≡ 2
UnitTest (MakeStrong "aaaaaaaaa") ≡ 3
