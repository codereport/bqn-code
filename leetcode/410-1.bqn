# Link: https://leetcode.com/problems/snake-in-matrix

u ⇐ •Import "/home/cph/bqn-test/test.bqn"
h ⇐ •Import "/home/cph/bqn-code/lib/helper.bqn"

# Explicit Solution 1
FinalPositionOfSnake ← {
    commands 𝕊 n:
    map ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    pos ← +´(map⊐commands)⊏h.del4
    pos⊑n‿n⥊↕×˜n
}

# Tacit Solution 1
m ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP" # map

FinalPositionOfSnake2 ← (+´h.del4⊏˜m⊸⊐)⊸⊑⟜((⋈⥊↕∘×)˜)

# Explicit Solution 2
FinalPositionOfSnake3 ← {
    commands 𝕊 n:
    map ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    pos ← +´(map⊐commands)⊏h.del4
    +´n‿1×pos
}

# Tacit Solution 2
FinalPositionOfSnake4 ← +´(+´h.del4⊏˜m⊸⊐)⊸×⟜(⋈⟜1)

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
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake  2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake  3) ≡ 1
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake2 2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake2 3) ≡ 1
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake3 2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake3 3) ≡ 1
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake4 2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake4 3) ≡ 1
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake5 2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake5 3) ≡ 1
u.UnitTest (     ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake6 2) ≡ 3
u.UnitTest (⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake6 3) ≡ 1
