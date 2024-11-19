# Link: https://leetcode.com/problems/count-almost-equal-pairs-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"
⟨_Tri, _TriId⟩ ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

SwapTwo    ← {⌽⌾(𝕩⊸⊏)𝕨}
IsPair     ← {⊑𝕨∊{•BQN¨𝕩⊸SwapTwo¨∾⋈_TriId˜↕≠𝕩}•Fmt𝕩}
CountPairs ← +´·∾IsPair _Tri˜

# Tests
UnitTest (CountPairs ⟨3,12,30,17,21⟩) ≡ 2
UnitTest (CountPairs ⟨1,1,1,1,1⟩    ) ≡ 10
UnitTest (CountPairs ⟨123,231⟩      ) ≡ 0
