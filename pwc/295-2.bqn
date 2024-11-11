# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-295
# This is also: https://leetcode.com/problems/jump-game-ii

JumpGame ← {
    m ← ⌈`𝕩+i←↕≠𝕩
    { ∨´i≥m ? ¯1 ; ¯1+≠⍷m }
}

# Tests
•Show JumpGame 2‿3‿1‿1‿4 # 2
•Show JumpGame 2‿3‿0‿4   # 2
•Show JumpGame 2‿0‿0‿4   # ¯1
