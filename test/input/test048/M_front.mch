MACHINE M_front
CONSTANTS
    ss, tt, ii, c0
PROPERTIES
    ss : seq(INTEGER) &
    ss = [7, 18, 18, 21] &
    tt : seq(REAL) &
    ii : NATURAL &
    c0 : REAL
ASSERTIONS
    (2 |-> 18) : front(ss);
    (1 |-> 1) : front([2]);
    (ii |-> c0) : front(tt)
END
