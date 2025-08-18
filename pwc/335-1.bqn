# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-335

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

a ← 'a'+↕25
CommonCharacters ← a/˜·⌊´(+´˘a⊸(=⌜))¨

# Tests
u.UnitTest (CommonCharacters ⟨"bella", "label", "roller"⟩) ≡ "ell"
u.UnitTest (CommonCharacters ⟨"cool", "lock", "cook"⟩)     ≡ "co"
u.UnitTest (CommonCharacters ⟨"hello", "world", "pole"⟩)   ≡ "lo"
u.UnitTest (CommonCharacters ⟨"abc", "def", "ghi"⟩)        ≡ ""
u.UnitTest (CommonCharacters ⟨"aab", "aac", "aaa"⟩)        ≡ "aa"
