# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-285

MakingChange ← {
    coins ← 1‿5‿10‿25‿50
    dp    ← 1∾𝕩⥊0
    { state ← 𝕩↑dp
      x↓dp
    }1
}

# Tests
•Show MakingChange 9  # 2
•Show MakingChange 11 #

# 11P
# 2N + 1P
# 1D + 1P
# 1N + 6P
# 


# 1: 9P
# 2: N + 4P

# 15 # 6

# 1: D + 5P
# 2: D + N
# 3: 3N
# 4: 2N + 5P
# 5: N + 10P
# 6: 15P

#  100
# Ouput: 292