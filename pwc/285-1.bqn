# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-285

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

DeadEnds ← ⊢´¨(¬∘∊/⊣)⊑¨
         # (↑¨↓¨)«~»(↑¨) - Kap (original)
         # ⊢/¨«~»(↑¨)    - Kap
         # ⊢/¨~⊃¨        - Dyalog APL
         # {⊃~/⌽↓⍉↑⍵}    - Dyalog APL (Alternative)
         # Ṫ€ḟḢ€         - Jelly
         # ↓¨~↑¨         - Hypothetical APL

# Tests
UnitTest (DeadEnds ⟨⟨"B","C"⟩, ⟨"D","B"⟩, ⟨"C","A"⟩⟩) ≡ ⟨"A"⟩
UnitTest (DeadEnds ⟨⟨"A","Z"⟩⟩                      ) ≡ ⟨"Z"⟩
