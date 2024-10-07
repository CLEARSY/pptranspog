MACHINE M_set_difference
CONSTANTS
    S1, S2, ii
PROPERTIES
    S1 : POW(INTEGER) &
    S1 = { xx | xx : INTEGER & (xx < 10)} &
    S2 : POW(INTEGER) &
    S2 = { xx | xx : INTEGER & (xx mod 2) = 0 } &
    ii : INTEGER
ASSERTIONS
    5 : {5, 4, 1, 1, 2, 3, 8} - {5, 1, 3};
    ii : S1 - S2
END
