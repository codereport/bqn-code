# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-349

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

udlr ← ⟨¯1‿0,1‿0,0‿1,0‿¯1⟩
MeetingPoint ← ∨´·0‿0⊸≡¨·+`udlr⊏˜"UDLR"⊸⊐

# Tests
u.UnitTest (MeetingPoint "ULD")          ≡ 0
u.UnitTest (MeetingPoint "ULDR")         ≡ 1
u.UnitTest (MeetingPoint "UUURRRDDD")    ≡ 0
u.UnitTest (MeetingPoint "UURRRDDLLL")   ≡ 1
u.UnitTest (MeetingPoint "RRUULLDDRRUU") ≡ 1
