MACHINE M_struct_rec
CONSTANTS
    res_set, res1, res2
PROPERTIES
    res_set = struct(Mark: 0..20, good_enough: BOOL) &
    res1 = rec(Mark: 12, good_enough: TRUE) &
    res2 = rec(Mark: 9, good_enough: FALSE)
ASSERTIONS
    res1'Mark = 12;
    res1 = rec(12, TRUE);
    res2'good_enough = FALSE;
    res2 : res_set
END