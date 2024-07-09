Chunk  ← {∘‿𝕨⥊𝕩}
Join   ← {(⊣∾𝕨∾⊢)´𝕩}
Rowify ← {"|"∾("|"Join𝕩)∾"|"}

Table ← {
   t ← 𝕨Chunk•Fmt¨𝕩       # convert to string & table
   m ← (⌈´⎉1)⍉≠¨t         # find column digit maxes
   x ← Rowify⎉1 (m↑¨⊢)⌾⍉t # pad numbers
   r ← ≠⊑<˘x              # row length
   s ← Rowify m/¨<"-"     # seperator row
   r Chunk s Join <˘x     # final table
}

•Show 5 Table (•rand.Range⚇0)25/⟨1050⟩
