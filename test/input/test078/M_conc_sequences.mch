MACHINE M_conc_sequences
CONSTANTS
    s0, s1, s2, s3, empty_seq, ii, c0
PROPERTIES
    s0 : seq(INTEGER) &
    s1 : seq(INTEGER) &
    s2 : seq(INTEGER) &
    s2 = [5, 4, 1, 1, 2, 3, 8] &
    s3 : seq(INTEGER) &
    s3 = [0, 7, 3, 8] &
    empty_seq : seq(INTEGER) &
    empty_seq = [] &
    ii : NATURAL &
    c0 : INTEGER
ASSERTIONS
    (ii |-> c0) : s0^s1;
    (ii |-> c0) : empty_seq^s0;
    (ii |-> c0) : s0^empty_seq;
    (ii |-> c0) : empty_seq^empty_seq;
    (5 |-> 5) : s2^s3;
    (5 |-> 5) : s3^s2
END
