u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
s  ⇐ •Import "/home/cph/bqn-code/lib/string.bqn"

testInput ← •path∾"/data/14-test.txt"
input     ← •path∾"/data/14.txt"

# Parsing
Parse ← {⥊⌽˘∘‿2⥊𝕩}¨·s.Ints¨•file.Lines

# Solutions
dim  ← 7‿11 # dimensions (103‿101)
Move ← { pos‿dx ← (2↑𝕩)‿(2↓𝕩) ⋄ (dim⊸|pos⊸+dx×𝕨)∾dx }
Sum  ← { ×´(+´⥊)¨↑⟜𝕩¨(⌊dim÷2)⊸×¨⥊⋈⌜˜1‿¯1 }
Grid ← (dim⥊0){(1⊸+)⌾(𝕨⊸⊑)𝕩}´⊢
A    ← Sum·Grid·2⊸↑¨100⊸Move¨
Tree ← { 15≤⌈´(⌈´(+×⊢)`)˘1⌊Grid 2⊸↑¨⊑𝕩 }
B    ← { ⊢´(1⊸Move¨)⊸⋈⟜(1⊸+)´•_while_(¬Tree)⟨1⊸Move¨𝕩,1⟩ }

# Tests
u.UnitTest (A Parse testInput) ≡ 12
# u.UnitTest (A Parse input)   ≡ 229069152
# u.UnitTest (B Parse input)   ≡ 7383
