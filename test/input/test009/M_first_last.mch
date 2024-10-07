MACHINE M_first_last
CONSTANTS
    ss
PROPERTIES
    ss : seq(INTEGER) &
    ss = [7, 18, 18, 21]
ASSERTIONS
    first(ss) = 7;
    7 = first(ss);
    last(ss) = 21;
    21 = last(ss);
    first(ss) = last(rev(ss));
    last(ss) = first(rev(ss))
END
