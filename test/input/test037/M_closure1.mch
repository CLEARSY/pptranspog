MACHINE M_closure1
CONSTANTS
    s0, s1, rr, c0, c1, nn
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    c0 : INTEGER &
    c1 : INTEGER &
    nn : NATURAL
ASSERTIONS
    (c0 |-> c1) : closure1(rr) &
    rr <: closure1(rr)
END