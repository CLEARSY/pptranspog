MACHINE M_iseq
CONSTANTS
    S1, S2
PROPERTIES
    S1 : POW(INTEGER) &
    S1 = {5, 4, 1, 1, 2, 3, 8} &
    S2 : POW(INTEGER) &
    S2 = { xx | xx : INTEGER & (xx mod 2) = 0 }
ASSERTIONS
    [5, 2, 0] : iseq(S1);
    [1.2, -5.3] : iseq(REAL);
    [2, 3, 4] : iseq(S2);
    [] : iseq(S1);
    [] : iseq(REAL)
END
