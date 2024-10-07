MACHINE M_range_substraction
CONSTANTS
    s0, s1, s2, rr, ss, c0, c1
PROPERTIES
    s0 <: INTEGER &
    s1 <: s0 &
    rr : (s0 <-> s1) &
    ss : INTEGER <-> INTEGER &
    ss = {xx, yy | xx : 0..10 & yy : INTEGER & xx + yy = 15} &
    c0 : INTEGER &
    c1 : INTEGER &
    s2 <: s1
ASSERTIONS
    (10 |-> 5) : ss |>> 8..10;
    (c0 |-> c1) : rr |>> s2
END
