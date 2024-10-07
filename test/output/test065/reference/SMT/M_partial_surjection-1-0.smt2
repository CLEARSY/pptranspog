(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_fun1_1 () (P (C Int Int)))
(declare-fun g_fun2_2 () (P (C Int Int)))
(declare-fun g_fun3_3 () (P (C Int Int)))
(declare-fun g_fun4_4 () (P (C Real Real)))
(declare-fun g_rel1_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Real Real (P (C Real Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (= (mem2 x_4 x_3 g_rel1_0) (or  (and (= x_4 2) (= x_3 7)) (and (= x_4 5) (= x_3 9)) (and (= x_4 2) (= x_3 6)) (and (= x_4 7) (= x_3 9)) (and (= x_4 5) (= x_3 3))))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_fun1_1) (and true true))))
(assert (forall ( (x_7 Int) ) (= (exists ( (x_8 Int) ) (mem2 x_7 x_8 g_fun1_1)) (and (>= x_7 0) (<= x_7 2)))))
(assert (forall ( (x_9 Int) ) (= (exists ( (x_10 Int) ) (mem2 x_10 x_9 g_fun1_1)) (and (>= x_9 1) (<= x_9 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_11 Int) ) (mem2 l_xx x_11 g_fun1_1)) (forall ((x_12 Int) ) (=> (= x_12 (+ l_xx 1)) (mem2 l_xx x_12 g_fun1_1))))))
(assert (forall ( (x_13 Int) (x_14 Int) ) (= (mem2 x_14 x_13 g_fun2_2) (and  (and (>= x_14 0) (<= x_14 2)) (= x_13 (+ x_14 1))))))
(assert (forall ( (x_15 Int) (x_16 Int) ) (= (mem2 x_16 x_15 g_fun3_3) (and  (and (>= x_16 0) (<= x_16 2)) (= x_15 (+ x_16 1))))))
(assert (forall ( (x_17 Real) (x_18 Real) ) (=> (mem3 x_18 x_17 g_fun4_4) (and true true))))
; Global hypotheses
(assert (and (and (forall ( (x_26 Int) (x_27 Int) ) (=> (mem2 x_27 x_26 g_rel1_0) (and (and (>= x_27 0) (<= x_27 7)) (and (>= x_26 0) (<= x_26 10))))) (forall ( (x_28 Int) (x_29 Int) (x_30 Int) ) (=> (and  (mem2 x_28 x_29 g_rel1_0) (mem2 x_28 x_30 g_rel1_0)) (= x_29 x_30)))) (forall ( (x_31 Int) ) (=> (and (>= x_31 0) (<= x_31 10)) (exists ( (x_32 Int) ) (mem2 x_32 x_31 g_rel1_0))))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_33 Int) (x_34 Int) ) (=> (mem2 x_34 x_33 g_fun1_1) (and (exists ( (x_35 Int) ) (mem2 x_34 x_35 g_fun1_1)) (exists ( (x_36 Int) ) (mem2 x_36 x_33 g_fun1_1))))) (forall ( (x_37 Int) (x_38 Int) (x_39 Int) ) (=> (and  (mem2 x_37 x_38 g_fun1_1) (mem2 x_37 x_39 g_fun1_1)) (= x_38 x_39)))) (forall ( (x_40 Int) ) (=> (exists ( (x_41 Int) ) (mem2 x_41 x_40 g_fun1_1)) (exists ( (x_42 Int) ) (mem2 x_42 x_40 g_fun1_1)))))))
(check-sat)
(exit)
