# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-275

⟨Lower, Words⟩ ⇐ •Import "../lib/string.bqn"

CanType ← +´·¬·⌈´¨·∨˝=⌜⟜Words○Lower

# Tests
•Show "la" CanType "Perl Weekly Challenge"    # 0
•Show  "a" CanType "Perl and Raku"            # 1
•Show "lo" CanType "Well done Team PWC"       # 2
•Show  "T" CanType "The joys of polyglottism" # 2
