MACHINE M_image
CONSTANTS
    s0, s1, rr, tt, c0, c1
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    tt : INTEGER <-> POW(INTEGER) &
    tt = {(2 |-> {6, 7}), (5 |-> {9}), (7 |-> {9}), (5 |-> {3})} &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    c0 : rr[c0..c1];
    {c0} : tt[{}];
    7 : {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3}[{7, 10, 2}]
END
