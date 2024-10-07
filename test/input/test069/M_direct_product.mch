MACHINE M_direct_product
CONSTANTS
    s0, s1, rr, ss, tt, uu, c0, c1, c2
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    ss : INTEGER <-> INTEGER &
    ss = {xx, yy | xx : 0..10 & yy : INTEGER & xx + yy = 15} &
    tt : INTEGER <-> INTEGER &
    tt = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    uu : (s1 <-> REAL) &
    c0 : INTEGER &
    c1 : INTEGER &
    c2 : REAL
ASSERTIONS
    (10 |-> (5 |-> 2)) : (ss><tt);
    (c0 |-> (c1 |-> c2)) : (rr><uu)
END
