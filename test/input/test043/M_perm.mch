MACHINE M_perm
CONSTANTS
    S1, S2
PROPERTIES
    S1 : POW(INTEGER) &
    S1 = {5, 4, 1, 1, 2, 3, 8} &
    S2 : POW(INTEGER) &
    S2 = { xx | xx : INTEGER & (xx mod 2) = 0 }
ASSERTIONS
    [5, 2, 0] : perm(S1);
    [1.2, -5.3] : perm(REAL);
    [2, 3, 4] : perm(S2);
    [] : perm(S1);
    [] : perm(REAL)
END
