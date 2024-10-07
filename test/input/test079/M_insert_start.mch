MACHINE M_insert_start
CONSTANTS
    s0, s1, empty_seq, ii, c0, c1
PROPERTIES
    s0 : seq(INTEGER) &
    s1 : seq(INTEGER) &
    s1 = [5, 4, 1, 1, 2, 3, 8] &
    empty_seq : seq(INTEGER) &
    empty_seq = [] &
    ii : NATURAL &
    c0 : INTEGER &
    c1 : INTEGER
ASSERTIONS
    (ii |-> c0) : c1 -> s0;
    (ii |-> c0) : c1 -> empty_seq;
    (1 |-> 5) : 9 -> s1;
    (1 |-> 5) : 9 -> s1;
    (2 |-> 5) : 9 -> s1;
    (2 |-> 5) : 9 -> s1
END
