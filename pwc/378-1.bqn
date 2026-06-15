# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-378

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Sld ← ⊑¯1∾˜1↓·∨·⍷·10⊸>⊸/-⟜'0'

# Tests
u.UnitTest (Sld "aaaaa77777") ≡ -1
u.UnitTest (Sld "abcde") ≡ -1
u.UnitTest (Sld "9zero8eight7seven9") ≡ 8
u.UnitTest (Sld "xyz9876543210") ≡ 8
u.UnitTest (Sld "4abc4def2ghi8jkl2") ≡ 4
