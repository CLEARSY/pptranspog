MACHINE M_inter
CONSTANTS
    S1, S2, xx, yy
PROPERTIES
    S1 : POW(POW(INTEGER)) &
    S1 = {{5, 4}, {1}, {1, 2, 3}} &
    S2 : POW(REAL) &
    S2 = {4.1, 2.3, 0.2} &
    xx : INTEGER &
    yy : REAL
ASSERTIONS
    xx : INTER(val).(val: S1 | val);
    yy : INTER(S2)
END
