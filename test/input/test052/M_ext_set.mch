MACHINE M_ext_set
CONSTANTS
    ss, empty_set, c0
PROPERTIES
    empty_set : POW(INTEGER) &
    empty_set = {} &
    ss : POW(INTEGER) &
    c0 : INTEGER
ASSERTIONS
    2 : {5, 4, 1, 1, 2, 3, 8};
    2 : empty_set;
    c0 : ss
END
