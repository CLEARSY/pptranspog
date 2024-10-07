MACHINE M_id
CONSTANTS
    s0, c0, c1
PROPERTIES
    s0 <: INTEGER &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    (1 |-> 1) : id(INTEGER) &
    (c0 |-> c1) : id(s0)
END