# Link: https://theweeklychallenge.org/blog/perl-weekly-challenge-373

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

EqualList ← ≡○∾

# Tests
u.UnitTest ("a"‿"bc" EqualList "ab"‿"c")        ≡ 1
u.UnitTest ("a"‿"b"‿"c" EqualList "a"‿"bc")     ≡ 1
u.UnitTest ("a"‿"bc" EqualList "a"‿"c"‿"b")     ≡ 0
u.UnitTest ("ab"‿"c"‿"" EqualList ""‿"a"‿"bc")  ≡ 1
u.UnitTest ("p"‿"e"‿"r"‿"l" EqualList ⋈"perl")  ≡ 1
