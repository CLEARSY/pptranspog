MACHINE M_reverse
CONSTANTS
    ss, ii, c0
PROPERTIES
    ss : seq(INTEGER) &
    ii : NATURAL &
    c0 : INTEGER
ASSERTIONS
    [5, 2, 0] = rev([0, 2, 5]);
    (2 |-> 1) : rev([3, 7, 2, 1, 4]);
    (ii |-> c0) : rev(ss)
END
