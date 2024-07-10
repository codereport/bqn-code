# Get Data
data ← •file.Lines "data/01.txt"

# Part A
Nums ← +´(•BQN·(⊑∾⊑∘⌽)∊⟜"0123456789"⊸/)¨

# Part B
# Translate ← # this is non-trivial maybe do later

# Print Results
•Show Nums data
# •Show Numes Translate data # TODO
