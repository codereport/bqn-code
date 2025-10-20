m ← 2 3⍴⍳6
Softmax ← (⊢÷⍤¯1+/)*∘(⊢-⍤¯1⌈/)
⎕ ← Softmax m
