MACHINE M_bool_true_false
ABSTRACT_CONSTANTS
    S1
PROPERTIES
    S1 <: INTEGER &
    S1 = {1,2,3}
ASSERTIONS
    bool(3 : S1) = TRUE;
    TRUE = bool(3 : S1);
    bool(4 : S1) = FALSE;
    FALSE = bool(4 : S1)
END
