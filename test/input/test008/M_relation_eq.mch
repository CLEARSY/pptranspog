MACHINE M_relation_eq
CONSTANTS
    rel1, fun1, fun2, fun3
PROPERTIES
    rel1 = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    fun1 : INTEGER +-> INTEGER &
    dom(fun1) = 0..2 & ran(fun1) = 1..3 & (!xx.(xx : dom(fun1) => fun1(xx) = xx + 1)) &
    fun2 = {xx, yy | xx : 0..2 & yy = xx+1} &
    fun3 = (%xx.(xx : 0..2 | xx + 1))
ASSERTIONS
    rel1(2) = 7;
    7 = rel1(2);
    fun1(1) = 3;
    3 = fun1(1);
    fun2(1) = 2;
    2 = fun2(1);
    fun3(1) = 2;
    2 = fun3(1);
    fun1 = fun2;
    fun2 = fun3
END
