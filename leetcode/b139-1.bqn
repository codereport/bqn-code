# Link: https://leetcode.com/problems/find-indices-of-stable-mountains

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

StableMountains  ← 1+·/¯1↓<
StableMountains2 ← /·»<
                 # 1+⍸¯1↓<  Kap Solution

# Tests
UnitTest ( 2 StableMountains  ⟨1,2,3,4,5⟩  ) ≡ ⟨3,4⟩
UnitTest ( 3 StableMountains  ⟨10,1,10,1,10⟩) ≡ ⟨1,3⟩
UnitTest (10 StableMountains  ⟨10,1,10,1,10⟩) ≡ ⟨⟩
UnitTest ( 2 StableMountains2 ⟨1,2,3,4,5⟩   ) ≡ ⟨3,4⟩
UnitTest ( 3 StableMountains2 ⟨10,1,10,1,10⟩) ≡ ⟨1,3⟩
UnitTest (10 StableMountains2 ⟨10,1,10,1,10⟩) ≡ ⟨⟩
