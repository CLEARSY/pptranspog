MACHINE M_empty_seq
ABSTRACT_CONSTANTS
    empty_seq
PROPERTIES
    empty_seq : seq(INTEGER ) &
    empty_seq = []
ASSERTIONS
    (1 |-> 0) : empty_seq &
    (1 |-> 1) /: empty_seq &
    (1 |-> 0) : [] &
    (1 |-> TRUE) /: []
END
