# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-374

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

Av ← "aeiou"⊸(∧´∊∾∊˜)
Cv ← Av¨⊸/·∾·↓¨↑

# Tests
u.UnitTest (Cv "aeiou") ≡ ⟨"aeiou"⟩
u.UnitTest (Cv "aaeeeiioouu") ≡ ⟨"aaeeeiioou", "aeeeiioou", "aaeeeiioouu", "aeeeiioouu"⟩
u.UnitTest (Cv "aeiouuaxaeiou") ≡ ⟨"aeiou","aeiouu", "aeiouua", "eiouua", "aeiou"⟩
u.UnitTest (Cv "uaeiou") ≡ ⟨"uaeio", "uaeiou", "aeiou"⟩
u.UnitTest (Cv "aeioaeioa") ≡ ⟨⟩
