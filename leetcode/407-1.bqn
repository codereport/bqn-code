# Link: https://leetcode.com/problems/number-of-bit-changes-to-make-two-integers-equal/description/

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨Binary⟩   ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

MinChanges ← {
    a‿b ← 𝕩 ⋈○Binary 𝕨
    n   ← a⌈○≠b
    d   ← a-○(n⊸↑⌾⌽)b
    {⊑1∊𝕩?¯1;+´-𝕩}d
}

# Tests
UnitTest (13 MinChanges 4)  ≡ 2
UnitTest (21 MinChanges 21) ≡ 0
UnitTest (14 MinChanges 13) ≡ -1
