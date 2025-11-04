# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-346

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MagicExpression ← ⊢

# Tests
u.UnitFail ( 6 MagicExpression "123" ) ≡ ⟨"1*2*3", "1+2+3"⟩
u.UnitFail ( 5 MagicExpression "105" ) ≡ ⟨"1*0+5", "10-5"⟩
u.UnitFail ( 8 MagicExpression "232" ) ≡ ⟨"2*3+2", "2+3*2"⟩
u.UnitFail (10 MagicExpression "1234") ≡ ⟨"1*2*3+4", "1+2+3+4"⟩
u.UnitFail ( 2 MagicExpression "1001") ≡ ⟨"1+0*0+1", "1+0+0+1", "1+0-0+1", "1-0*0+1", "1-0+0+1", "1-0-0+1"⟩