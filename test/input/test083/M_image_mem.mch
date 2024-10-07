MACHINE M_image_mem
CONSTANTS
    rel1, fun1, c0, c1
PROPERTIES
    rel1 = {2 |-> {7, 5}, 5 |-> {7}, 2 |-> {6}, 7 |-> {}} &
    fun1 : INTEGER <-> POW(INTEGER) &
    c0 : INTEGER &
    c1: INTEGER
ASSERTIONS
    c0 : fun1(c1);
    2 : rel1(2)
END
