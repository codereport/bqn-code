# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-295
# This is also: https://leetcode.com/problems/jump-game-ii

JumpGame  ← { i ← ↕≠𝕩 ⋄ m ← ⌈`𝕩+i ⋄ { ∨´i≥m ? ¯1 ; ¯1+≠⍷m } }
JumpGame2 ← { i ← ↕≠𝕩 ⋄ m ← ⌈`𝕩+i ⋄ ¯1+(≠⍷m)×(¬∨´i≥m) }

# Tests
•Show JumpGame 2‿3‿1‿1‿4 # 2
•Show JumpGame 2‿3‿0‿4   # 2
•Show JumpGame 2‿0‿0‿4   # ¯1

•Show JumpGame2 2‿3‿1‿1‿4 # 2
•Show JumpGame2 2‿3‿0‿4   # 2
•Show JumpGame2 2‿0‿0‿4   # ¯1
