MACHINE M_ran_dom
CONSTANTS
    s0, s1, rr, ss, tt, c0
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    rr : (s0 <-> s1) &
    ss : INTEGER <-> INTEGER &
    ss = {xx, yy | xx : 0..10 & yy : INTEGER & xx + yy = 15} &
    tt : INTEGER <-> INTEGER &
    tt = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    c0 : INTEGER
ASSERTIONS
    c0 : dom(rr) &
    c0 : ran(rr) &
    0 : dom(ss) &
    0 : dom(ss) &
    2 : dom(tt) &
    7 : ran(tt)
END