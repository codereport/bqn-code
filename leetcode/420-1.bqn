# Link: https://leetcode.com/problems/find-the-sequence-of-strings-appeared-on-the-screen

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

StringSequence ← ⥊¨·∾·{(⊢´𝕨)⊸∾¨𝕩}`·'a'⊸+∘↕¨-⟜'`'

# Tests
UnitTest (StringSequence "abc") ≡ ⟨"a","aa","ab","aba","abb","abc"⟩
UnitTest (StringSequence "he" ) ≡ ⟨"a","b","c","d","e","f","g","h","ha","hb","hc","hd","he"⟩
