# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-346

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

LongestParentheses ← ⌈´·((((+´×∧´)0⊸≤)×(0=⊑∘⌽))·+`·-˝"()"=⌜⊢)¨·∾·(¯1↓↓)¨1↓↑

# Tests
u.UnitTest (LongestParentheses "(()())")        ≡ 6
u.UnitTest (LongestParentheses ")()())")        ≡ 4
u.UnitTest (LongestParentheses "((()))()(((()") ≡ 8
u.UnitTest (LongestParentheses "))))((()(")     ≡ 2
u.UnitTest (LongestParentheses "()(()")         ≡ 2
