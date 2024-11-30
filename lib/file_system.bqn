ListRecursiveFiles ⇐ {
    l ← •file.List 𝕩     # files/directories
    P ← (𝕩∾"/")⊸∾        # prefix
    m ← 'd'=•file.Type¨P¨l # mask
    d ← l/˜m             # directories
    f ← l/˜¬m            # file
    (P¨f) ∾ ∾𝕊¨P¨d
}

Clear ⇐ { 𝕩 •file.Chars "" }
Touch ⇐ Clear

ListRecursiveBQNFiles ⇐ (∨´1↓".bqn"⊸⍷)¨⊸/ListRecursiveFiles
