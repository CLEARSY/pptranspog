MACHINE M_partial_injection
CONSTANTS
    rel1, fun1, fun2, fun3, fun4
PROPERTIES
    rel1 = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    fun1 : INTEGER <-> INTEGER &
    dom(fun1) = 0..2 &
    ran(fun1) = 1..3 & (!xx.(xx : dom(fun1) => fun1(xx) = xx + 1)) &
    fun2 = {xx, yy | xx : 0..2 & yy = xx+1} &
    fun3 = (%xx.(xx : 0..2 | xx + 1)) &
    fun4 : REAL <-> REAL
ASSERTIONS
    rel1 : 0..7 >+> 0..10;
    fun1 : dom(fun1) >+> ran(fun1);
    fun2 : INTEGER >+> INTEGER;
    fun3 : INTEGER >+> INTEGER;
    fun4 : REAL >+> REAL
END
