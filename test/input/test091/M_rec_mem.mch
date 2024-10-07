MACHINE M_rec_mem
CONSTANTS
    res_set, get_res_set, ii, bb
PROPERTIES
    res_set = struct(Mark: POW(0..20), good_enough: POW(BOOL)) &
    get_res_set : POW(0..20) --> res_set &
    get_res_set = %(notes).(notes : POW(0..20) | rec(Mark: notes, good_enough: {TRUE})) &
    ii : INTEGER &
    bb : BOOL
ASSERTIONS
    ii : ((get_res_set(0..ii))'Mark);
    12 : ((get_res_set({12}))'Mark);
    bb : ((get_res_set(0..ii))'good_enough);
    TRUE : ((get_res_set(0..ii))'good_enough)
END
