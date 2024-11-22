#!/usr/bin/env bqn

nl      ← ⟨@+10⟩
q       ← @+34
f       ← "Function"
comment ← "# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-"
include ← "⟨UnitTest⟩ ⇐ •Import "∾q∾"/home/cph/bqn-test/test.bqn"∾q

CreateFiles ← {
  content ← comment∾𝕩∾nl∾nl∾include∾nl∾nl∾f∾" ← ⊢"∾nl∾nl
  content ↩ content∾"# Tests"∾nl∾"UnitTest ("∾f∾" ) ≡ "∾nl
  •file.Chars⟜content¨ (∾⟜"-1.bqn"⋈∾⟜"-2.bqn")𝕩
}

Main ← {1
  "Need one integer argument" ! 1=≠𝕩
  n ← ⊑𝕩
  CreateFiles n
  •Out "✅ Files "∾n∾"-1.bqn and "∾n∾"-2.bqn created successfully."
}

Main •args
