MACHINE M_mem_first_last
CONSTANTS
    ss, tt, c0
PROPERTIES
    ss : seq(POW(INTEGER)) &
    tt : seq(POW(INTEGER)) &
    tt = [{2, 5}, {-1, -2, 9}, {}, {5}] &
    c0 : INTEGER
ASSERTIONS
    c0 : first(ss);
    c0 : last(ss);
    2 : first(tt);
    2 : last(tt)
END
