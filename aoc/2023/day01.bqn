# Imports
⟨Split⟩ ⇐ •Import "../../lib/strings.bqn" # TODO sort out two string libs
⟨Join⟩  ⇐ •Import "../../lib/string.bqn"

# Get Data
data ← •file.Lines "data/01.txt"

# Part A
Nums ← +´(•BQN·(⊑∾⊑∘⌽)∊⟜"0123456789"⊸/)¨

# Part B
ReplaceAll  ← { from‿to ← 𝕨 ⋄ to Join from Split 𝕩 } # TODO libify
ReplaceAllN ← { 0≠≠𝕨?(1↓𝕨)𝕊(⊑𝕨)ReplaceAll𝕩;𝕩 }
from        ← ⟨"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"⟩
to          ← ⟨"o1e", "t2o", "t3e",   "f4r",  "f5e",  "s6x", "s7n",   "e8t",   "n9e" ⟩
Translate   ← { (from ⋈¨ to) ReplaceAllN 𝕩 }

# Print Results
•Show Nums data
•Show Nums Translate ¨ data
