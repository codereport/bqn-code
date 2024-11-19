# Link: https://leetcode.com/problems/snake-in-matrix

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

# Explicit Solution 1
FinalPositionOfSnake ← {
    commands 𝕊 n:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    pos    ← +´(map⊐commands)⊏deltas
    pos⊑n‿n⥊↕×˜n
}

# Tacit Solution 1
d ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩        # deltas
m ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP" # map

FinalPositionOfSnake2 ← (+´d⊏˜m⊸⊐)⊸⊑⟜((⋈⥊↕∘×)˜)

# Explicit Solution 2
FinalPositionOfSnake3 ← {
    commands 𝕊 n:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    pos    ← +´(map⊐commands)⊏deltas
    +´n‿1×pos
}

# Tacit Solution 2
FinalPositionOfSnake4 ← +´(+´d⊏˜m⊸⊐)⊸×⟜(⋈⟜1)

# Explicit Solution 3
FinalPositionOfSnake5 ← {
    commands 𝕊 n:
    deltas ← ⟨1,1,n,-n⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    +´(map⊐commands)⊏deltas
}

# Tacit Solution 3
FinalPositionOfSnake6 ← +´m⊸⊐⊸⊏⟜(1‿¯1∾⋈⟜-)

# Tests
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake  2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake  3) ≡ 1
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake2 2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake2 3) ≡ 1
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake3 2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake3 3) ≡ 1
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake4 2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake4 3) ≡ 1
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake5 2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake5 3) ≡ 1
UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake6 2) ≡ 3
UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake6 3) ≡ 1
