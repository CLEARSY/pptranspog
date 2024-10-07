MACHINE M_prod_eq
ABSTRACT_CONSTANTS
    ff
PROPERTIES
    ff = (%xx.(xx : 0..2 | xx * 2))
ASSERTIONS
    (3 |-> 4) = (succ(2) |-> ff(2))
END
