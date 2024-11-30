#!/usr/bin/env bqn

src  ← •wdpath∾"/lib/"
dirs ← ∾⟜"/deps"¨"/home/cph/"⊸∾¨"bqn-lint"‿"bqn-test"‿"bqn-format"

# CBQN currently doesn't implement •file.Copy
ForceCopy ← {
    # Copy file 𝕩 to path 𝕨 (overwrite if there)
    𝕨 •file.Chars •file.Chars 𝕩
}

main ← {
    { ((𝕩∾"/")⊸∾ ForceCopy src⊸∾)¨ •file.List 𝕩 }¨ dirs
    •Out "🥳 deps updated!"
}

main
