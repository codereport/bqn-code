# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-295

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

WorkBreak ← {
   0=≠𝕨 ? 1 ;
   n ← ≠∾𝕩/˜⊑¨⍷⟜𝕨¨𝕩
   𝕨{ 0=n ? 0 ; (n↓𝕨)WorkBreak𝕩 }𝕩
}

# Tests
UnitTest 1 =  "weeklychallenge" WorkBreak ⟨"challenge", "weekly"⟩
UnitTest 1 =     "perlrakuperl" WorkBreak ⟨"raku", "perl"⟩
UnitTest 0 = "sonsanddaughters" WorkBreak ⟨"sons", "sand", "daughters"⟩
