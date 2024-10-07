MACHINE M_size
CONSTANTS
    ss, empty_seq
PROPERTIES
    ss : seq(INTEGER) &
    ss = [7, 18, 18, 21] &
    empty_seq : seq(INTEGER) &
    empty_seq = []
ASSERTIONS
    size(ss) = 4;
    4 = size(ss);
    size(empty_seq) = 0;
    0 = size(empty_seq)
END
