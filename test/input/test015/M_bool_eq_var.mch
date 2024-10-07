MACHINE M_bool_eq_var
ABSTRACT_CONSTANTS
    S1, xx
PROPERTIES
    S1 <: INTEGER &
    S1 = {1,2,3} &
    xx : BOOL
ASSERTIONS
    bool(3 : S1) = xx;
    xx = bool(3 : S1)
END
