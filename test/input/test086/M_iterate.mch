MACHINE M_iterate
CONSTANTS
    s0, s1, rr, tt, c0, c1, ii
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    tt : INTEGER <-> INTEGER &
    tt = {(2 |-> 6), (5 |-> 9), (7 |-> 9), (5 |-> 3)} &
    c0 : INTEGER &
    c1 : INTEGER &
    ii : NATURAL
ASSERTIONS
    (c0 |-> c1) : iterate(rr, ii) &

    // Miterate1: e : iterate(S, n), S is not a variable
    (c0 |-> c1) : iterate({(2 |-> 6), (5 |-> 9), (7 |-> 9), (5 |-> 3)}, ii) &
    (c0 |-> c1) : iterate({(2 |-> 6), (5 |-> 9), (7 |-> 9), (5 |-> 3)}, 0) &
    (c0 |-> c1) : iterate({(2 |-> 6), (5 |-> 9), (7 |-> 9), (5 |-> 3)}, 2) &

    // Miterate2: e : iterate(S, n), n is not a variable
    (c0 |-> c1) : iterate(rr, 0) &
    (c0 |-> c1) : iterate(rr, 2)
END
