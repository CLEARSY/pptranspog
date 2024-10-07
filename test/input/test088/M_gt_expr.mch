MACHINE M_gt_expr
ABSTRACT_CONSTANTS
    S1, S2, S3,
    rel1, fun1, fun2, fun3,
    ss, empty_seq
PROPERTIES
    S1 <: INTEGER &
    S2 <: INTEGER &
    S3 <: INTEGER &
    S1 = {} &
    S2 = {1} &
    S3 = {1,2,3} &

    //
    rel1 = {2 |-> 7, 5 |-> 9, 2 |-> 6, 7 |-> 9, 5 |-> 3} &
    fun1 : INTEGER +-> INTEGER &
    dom(fun1) = 0..2 & ran(fun1) = 1..3 & (!xx.(xx : dom(fun1) => fun1(xx) = xx + 1)) &
    fun2 = {xx, yy | xx : 0..2 & yy = xx+1} &
    fun3 = (%xx.(xx : 0..2 | xx + 1)) &

    //
    ss : seq(INTEGER) &
    ss = [7, 18, 18, 21] &
    empty_seq : seq(INTEGER) &
    empty_seq = []
ASSERTIONS
    SIGMA(val).(val: S1| val) > 0;
    SIGMA(val).(val: S2| val) > 1;
    SIGMA(val).(val: S3| val) > 6;
    PI(val).(val: S1| val) > 1;
    PI(val).(val: S2| val) > 1;
    PI(val).(val: S3| val) > 6;

    //
    card(S1) > 0;
    card(S2) > 1;
    card(S3) > 3;
    0 > card(S1);
    1 > card(S2);
    3 > card(S3);
    card(S1) > card(S2);

    //
    min(S2) > 3;
    max(S2) > 1;
    1 > min(S2);
    3 > max(S2);
    max(S1) > min(S1);

    //
    rel1(2) > 7;
    7 > rel1(2);
    fun1(1) > 3;
    3 > fun1(1);
    fun2(1) > fun3(1);

    //
    first(ss) > 7;
    7 > first(ss);
    last(ss) > 21;
    21 > last(ss);
    first(ss) > last(ss);

    //
    size(ss) > 4;
    4 > size(ss);
    size(empty_seq) > 0;
    0 > size(empty_seq)
END
