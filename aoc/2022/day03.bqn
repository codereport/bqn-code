# Get Data
data ← •file.Lines "data/03.txt"

# Part A & B
alpha  ← ⥊"aA"+⌜↕26
Score ← {1+alpha⊐⍷(∊/⊣)´𝕩}
•Show +´ ∾ Score¨ {<˘2‿∘⥊𝕩} ¨ data # Part A
•Show +´ ∾ Score¨ <˘∘‿3⥊      data # Part B
