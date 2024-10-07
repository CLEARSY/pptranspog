MACHINE M_mem_not_skeleton
CONSTANTS
    set1, c0, c1
PROPERTIES
    set1 : POW(INTEGER) &
    c0 : INTEGER &
    c1 : INTEGER * INTEGER
ASSERTIONS
    5 : set1;
    (5 |-> c0) : set1 * set1;
    (c0 |-> c0) : set1 * set1;
    c1 : set1 * set1
END