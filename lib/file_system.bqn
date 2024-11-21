ListRecursive ⇐ {
    l ← •file.List 𝕩     # files/directories
    P ← (𝕩∾"/")⊸∾        # prefix
    m ← 𝕨=•file.Type¨P¨l # mask
    d ← l/˜m             # directories
    f ← l/˜¬m            # file
    (P¨f) ∾ ∾𝕨⊸𝕊¨P¨d
}
