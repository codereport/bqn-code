#!/usr/bin/env bqn

nl ← ⟨@+10⟩

CreateFiles ← {
  content ← ∾´⥊"# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-"∾𝕩∾nl∾nl∾"F ← ⊢"∾nl∾nl∾"# Tests"∾nl
  •file.Chars⟜content¨ (∾⟜"-1.bqn"⋈∾⟜"-2.bqn")𝕩
}

{
  "Need one integer argument" ! 1=≠𝕩
  n ← ⊑𝕩
  CreateFiles n
  •Out "✅ Files "∾n∾"-1.bqn and "∾n∾"-2.bqn created successfully."
} •args
