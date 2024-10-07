MACHINE M_overload
CONSTANTS
    s0, s1, rr, ss, tt, c0, c1
PROPERTIES
    s0 <: INTEGER &
    s1 <: s0 &
    rr : (s0 <-> s1) &
    tt : INTEGER <-> INTEGER &
    ss : INTEGER <-> INTEGER &
    ss = {xx, yy | xx : 0..10 & yy : INTEGER & xx + yy = 15} &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    (10 |-> 0) : ss <+ {10 |-> 0};
    (10 |-> 5) : ss <+ {10 |-> 0};
    (c0 |-> c1) : rr <+ tt
END
