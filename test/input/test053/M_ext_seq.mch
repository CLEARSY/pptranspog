MACHINE M_ext_seq
CONSTANTS
    ss, empty_seq, c0, ii
PROPERTIES
    empty_seq : seq(INTEGER) &
    empty_seq = [] &
    ss : seq(INTEGER) &
    c0 : INTEGER &
    ii : NATURAL
ASSERTIONS
    (2 |-> 4) : [5, 4, 1, 1, 2, 3, 8];
    (1 |-> 6) : empty_seq;
    (ii |-> c0) : ss
END
