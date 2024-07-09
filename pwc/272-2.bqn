# Solution 1 (Explicit)
ScoreOfString ← {+´|-´˘2↕'a'-˜𝕩}

# Solution 2 (Tacit)
ScoreOfString2 ← +´·|·-´˘2↕-⟜'a'

# Solution 3 (More Functions)
Ord    ← -⟜'a'
Deltas ← -´˘2↕⊢
ScoreOfString3 ← +´·|·Deltas Ord

•Show ScoreOfString "hello" # 13
•Show ScoreOfString "perl"  # 30
•Show ScoreOfString "raku"  # 37
