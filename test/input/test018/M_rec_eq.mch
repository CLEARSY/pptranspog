MACHINE M_rec_eq
CONSTANTS
    res1, res2
PROPERTIES
    res1 = rec(Mark: 12, good_enough: TRUE) &
    res2 = rec(Mark: 9, good_enough: FALSE)
ASSERTIONS
    res1 = res2
END