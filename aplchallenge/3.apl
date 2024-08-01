a ← ('KEN' 'IVERSON')('DYALOG' 'APL')
b ← 'THE QUICK BROWN FOX'
c ← 'SCHNITZELS'
d ← 'FREEZING' 'COLD' 'CHILLY' 'PLEASANT' 'HOT' 'HELLISH'

∊                       ⍝ 1: Existentialism
>                       ⍝ 2: Comparing This to That
2 1 6⊃a                 ⍝ 3: Picky Picky
' '(≠⊆⊢)b               ⍝ 4: Partition Condition
≠                       ⍝ 5: You Can Scan!
+/∧\~c∊'AEIOU'          ⍝ 6: Leading Question
{⍺⊃' '(≠⊆⊢)⍵}           ⍝ 7: You Have My Word
(~∊⍨)⊆⊢                 ⍝ 8: Give Me a Break!
{d[0 32 50 70 85 95⍸⍵]} ⍝ 9: Turning up the Heat
{⊃⍵∩'AEOUI'}            ⍝ 10: Pick a Vowel
