# Link: https://leetcode.com/problems/snake-in-matrix

FinalPositionOfSnake ← {
    n 𝕊 commands:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    final  ← +´(map⊐commands)⊏deltas
    final⊑n‿n⥊↕×˜n
}

# Tests
•Show 2 FinalPositionOfSnake ⟨"RIGHT","DOWN"⟩      # 3
•Show 3 FinalPositionOfSnake ⟨"DOWN","RIGHT","UP"⟩ # 1

