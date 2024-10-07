MACHINE M_min_max
ABSTRACT_CONSTANTS
    S1, S2
PROPERTIES
    S1 <: INTEGER &
    S2 <: INTEGER &
    S1 = {1} &
    S2 = {1,2,3}
ASSERTIONS
    min(S2) = 3;
    max(S2) = 1;
    1 = min(S2);
    3 = max(S2);
    max(S1) = min(S1)
END
