MACHINE M_projection
CONSTANTS
    s0, s1, rr, ss, c0, c1, c2
PROPERTIES
    s0 <: INTEGER &
    s1 <: s0 &
    rr : (s0 <-> s1) &
    ss : POW(INTEGER) &
    ss = {xx | xx : 0..10 & xx mod 2 = 0} &
    c0 : INTEGER &
    c1 : INTEGER &
    c2 :  INTEGER
ASSERTIONS
    ((10 |-> 5) |-> 5) : prj1(ss, 0..5);
    ((c0 |-> c1) |-> c2) : prj1(s0, s1);
    ((10 |-> 5) |-> 10) : prj2(ss, 0..5);
    ((c0 |-> c1) |-> c2) : prj2(s0, s1)
END
