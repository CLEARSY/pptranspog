MACHINE M_rel_set
CONSTANTS
    s0, s1, tt
PROPERTIES
    s0 <: INTEGER &
    s1 <: INTEGER &
    tt : INTEGER <-> POW(INTEGER) &
    tt = {(2 |-> {6, 7}), (5 |-> {9}), (7 |-> {9}), (5 |-> {3})}
ASSERTIONS
    succ : s0 <-> s1;
    tt : {2, 5, 7} <-> POW(3..6)
END
