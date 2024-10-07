MACHINE M_lambda
CONSTANTS
    ff
PROPERTIES
    ff = (%xx.(xx : 0..2 | xx * 2))
ASSERTIONS
    {(3 |-> 4)} = ff
END
