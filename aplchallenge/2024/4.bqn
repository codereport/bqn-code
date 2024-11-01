a ← "here"‿"be"‿"dragons"

•Show 1+↕42                        # 1: Easy as 1-2-3
•Show 3‿1‿4×2‿7‿2                  # 2: Rectangle Areas
•Show 5‿4‿6‿8‿4‿3‿3‿1⊏"DYALOG APL" # 3: Selection
•Show 1+6‿4⥊↕24                    # 4: How the Tables have Turned
•Show ⌽⌽¨"mood"‿"net"‿"pop"        # 5: All Backwards
•Show ⌽⊸≡"APL"                     # 6: Palindrome
⌽⊸≡                                # 7: More Palindromes
•Show 'Q'{(=⌜˜↕𝕩)⊏'+'‿𝕨}4         # 8: Turning up the Heat
•Show 2‿1‿0 ⊑¨ a                   # 9: Babushka

# 10: X Marks the Spot (even only)
X ← { 
  Q ← {(=⌜˜↕⌊2÷˜𝕩)⊏' '‿𝕨} # quadrant
  ∾⟜(⌽⌽˘)('\'⊸Q∾˘(⌽˘'/'⊸Q))𝕩
}

•Show X 4
