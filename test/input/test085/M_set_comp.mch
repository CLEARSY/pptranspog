MACHINE M_set_comp
CONSTANTS
    pairs, c0
PROPERTIES
    pairs = { xx | xx : INTEGER & (xx mod 2) = 0 } &
    c0 : INTEGER
ASSERTIONS
    c0 : pairs;
    2 : pairs
END