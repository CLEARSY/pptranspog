MACHINE M_domain_restriction
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
    (10 |-> 5) : 8..10 <| ss;
    (c0 |-> c1) : s2 <| rr
END
