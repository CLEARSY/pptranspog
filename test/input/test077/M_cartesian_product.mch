MACHINE M_cartesian_product
CONSTANTS
    s0, s1, c0
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    c0 : INTEGER*INTEGER
ASSERTIONS
    c0 : s0 * s1;
    (2 |-> 5) : {2, 5, 7} * (0..10);
    (2 |-> 0) : { xx | xx : INTEGER & (xx mod 2) = 0 } * {0}
END
