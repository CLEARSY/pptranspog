/* M_succ_pred
 * Author: David DEHARBE
 * Copyright (c) CLEARSY 2024
 */
MACHINE
    M_succ_pred
ABSTRACT_CONSTANTS
    c1, s1
PROPERTIES
    c1 : INTEGER &
    s1 : POW(INTEGER)
ASSERTIONS
    succ(1) = 1;
    succ(c1) = c1;
    succ[{c1}] = s1;
    succ[s1] = s1 ;
    pred(1) = 1;
    pred(c1) = c1;
    pred[{c1}] = s1;
    pred[s1] = s1 ;
    (succ; pred) = id(INTEGER)
END
