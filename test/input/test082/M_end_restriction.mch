MACHINE M_end_restriction
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
    (ii |-> c0) : s0 \|/ c1;
    (ii |-> c0) : empty_seq \|/ c1;
    (4 |-> 1) : s1 \|/ 3;
    (6 |-> 3) : s1 \|/ 3
END
