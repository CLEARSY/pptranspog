MACHINE M_set_eq
CONSTANTS
    pairs1, pairs2, double
PROPERTIES
    double : INTEGER <-> INTEGER &
    double = (%xx.(xx : INTEGER | xx * 2)) &
    pairs1 : POW(INTEGER) &
    pairs2 : POW(INTEGER) &
    pairs1 = ran(double) &
    pairs2 = { xx | xx : INTEGER & (xx mod 2) = 0 }
ASSERTIONS
    pairs1 = pairs2
END