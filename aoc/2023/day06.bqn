# Imports
⟨ToNats⟩ ← •Import "../../lib/strings.bqn"

# Get Data
data ← •file.Lines "data/06.txt"

# Parsing
times‿dist ← ToNats ¨ 9⊸↓ ¨ data

# Part A
Wins      ← +´⊣<(-⟜↕×↕)∘⊢
WinCombos ← ×´Wins¨

# Part B
FlattenInts ← ToNats · ∾ •Fmt ¨

# Print Results
•Show dist WinCombos times
•Show dist WinCombos ○ FlattenInts times

# •Show "A: "∾(a_time - start)
# •Show "B: "∾(b_time - a_time)

# Profiling
•Out "A: " ∾ •Fmt 10 dist⊸WinCombos •_timed  times
b_time ← 10 dist⊸(WinCombos ○ FlattenInts)•_timed times
•Out "B: " ∾ •Fmt b_time
•Out "x faster than Python"∾˜•Fmt 100 × ⌊ ¯1 + 3.526 ÷ b_time
