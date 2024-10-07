MACHINE M_interval
CONSTANTS
    lb, ub, ii
PROPERTIES
    lb : INTEGER &
    ub : INTEGER &
    ii : INTEGER
ASSERTIONS
    ii : lb..ub;
    5 : 1..7;
    0 : 2..1;
    2*ii : -ub..-lb
END
