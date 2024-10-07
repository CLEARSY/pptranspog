MACHINE M_reverse
CONSTANTS
    s0, s1, rr, ss, tt, c0, c1
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    ss : INTEGER <-> INTEGER &
    ss = {xx, yy | xx : 0..10 & yy : INTEGER & xx + yy = 15} &
    tt : INTEGER <-> INTEGER &
    tt = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    (c0 |-> c1) : rr <=> ((c1 |-> c0) : rr~);
    (13 |-> 2) : ss~;
    (7 |-> 2) : tt~
END