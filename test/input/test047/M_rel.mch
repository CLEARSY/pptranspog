MACHINE M_rel
CONSTANTS
    s0, s1, rr, tt, c0, c1
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> POW(s1)) &
    tt : INTEGER <-> POW(INTEGER) &
    tt = {(2 |-> {6, 7}), (5 |-> {9}), (7 |-> {9}), (5 |-> {3})} &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    (c0 |-> c1) : rel(rr);
    (5 |-> 9) : rel(tt);
    (2 |-> 6) : rel(tt)
END
