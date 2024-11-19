# Link: https://leetcode.com/problems/find-x-sum-of-all-k-long-subarrays-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

FindXSum  ← { 𝕊n‿k‿x: {+´×´¨x↑∨⋈¨⟜(↕∘≠)/⁼𝕩}˘k↕n }
FindXSum2 ← { 𝕊n‿k‿x: {+´×´¨x↑∨(≠⋈⊑)¨⊐⊸⊔𝕩}˘k↕n }

# Tests
UnitTest (FindXSum  ⟨1,1,2,2,3,4,2,3⟩‿6‿2) ≡ ⟨6,10,12⟩
UnitTest (FindXSum  ⟨3,8,7,8,7,5⟩‿2‿2)     ≡ ⟨11,15,15,15,12⟩

UnitTest (FindXSum2 ⟨1,1,2,2,3,4,2,3⟩‿6‿2) ≡ ⟨6,10,12⟩
UnitTest (FindXSum2 ⟨3,8,7,8,7,5⟩‿2‿2)     ≡ ⟨11,15,15,15,12⟩
