MACHINE M_conc_succession
CONSTANTS
    ss, tt, c0
PROPERTIES
    ss : seq(seq(INTEGER)) &
    tt : seq(seq(INTEGER)) &
    tt = [[2, 5], [-1, -2, 9], [], [5]] &
    c0 : INTEGER
ASSERTIONS
    (2 |-> 5) : conc(tt);
    (1 |-> c0) : conc(ss)
END
