MACHINE M_empty_set
ABSTRACT_CONSTANTS
    empty_set
PROPERTIES
    empty_set <: INTEGER &
    empty_set = {}
ASSERTIONS
    0 : empty_set &
    1 /: empty_set &
    0 : {} &
    "1" /: {}
END
