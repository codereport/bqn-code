# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-275

IsDigit ← {⊑𝕩∊'0'+↕10}

ReplaceDigits ← {IsDigit𝕩?•BQN⥊𝕩;0}¨+{IsDigit𝕩?𝕨;𝕩}`

# Tests
•Show ReplaceDigits "a1c1e1"   # 'abcdef'
•Show ReplaceDigits "a1b2c3d4" # 'abbdcfdh'
•Show ReplaceDigits "b2b"      # 'bdb'
•Show ReplaceDigits "a16z"     # 'abgz'
