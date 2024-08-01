⟨Words,IsVowel⟩ ⇐ •Import "../lib/string.bqn"

a ← ⟨⟨"KEN","IVERSON"⟩,⟨"DYALOG","APL"⟩⟩
b ← "THE QUICK BROWN FOX"
c ← "SCHNITZELS"
d ← "FREEZING"‿"COLD"‿"CHILLY"‿"PLEASANT"‿"HOT"‿"HELLISH"

∊                           # 1: Existentialism
>                           # 2: Comparing This to That
5⊑0⊑1⊑a                     # 3: Picky Picky
Words b                     # 4: Partition Condition
≠                           # 5: You Can Scan!
+´∧`¬IsVowel¨c              # 6: Leading Question
⊑⊏⟜Words                    # 7: You Have My Word
TODO                        # 8: Give Me a Break!
{d⊏˜¯1+⊑0‿32‿50‿70‿85‿95⍋𝕩} # 9: Turning up the Heat
⊑IsVowel¨⊸/                 # 10: Pick a Vowel
