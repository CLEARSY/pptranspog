MACHINE M_tail
CONSTANTS
    ss, tt, ii, c0
PROPERTIES
    ss : seq(INTEGER) &
    ss = [7, 18, 18, 21] &
    tt : seq(REAL) &
    ii : NATURAL &
    c0 : REAL
ASSERTIONS
    (2 |-> 18) : tail(ss);
    (1 |-> 1) : tail([2]);
    (ii |-> c0) : tail(tt)
END
