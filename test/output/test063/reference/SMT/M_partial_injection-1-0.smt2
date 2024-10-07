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
(assert (and (and (forall ( (x_27 Int) (x_28 Int) ) (=> (mem2 x_28 x_27 g_rel1_0) (and (and (>= x_28 0) (<= x_28 7)) (and (>= x_27 0) (<= x_27 10))))) (forall ( (x_29 Int) (x_30 Int) (x_31 Int) ) (=> (and  (mem2 x_29 x_30 g_rel1_0) (mem2 x_29 x_31 g_rel1_0)) (= x_30 x_31)))) (forall ( (x_32 Int) (x_33 Int) (x_34 Int) ) (=> (and  (mem2 x_33 x_32 g_rel1_0) (mem2 x_34 x_32 g_rel1_0)) (= x_33 x_34)))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_35 Int) (x_36 Int) ) (=> (mem2 x_36 x_35 g_fun1_1) (and (exists ( (x_37 Int) ) (mem2 x_36 x_37 g_fun1_1)) (exists ( (x_38 Int) ) (mem2 x_38 x_35 g_fun1_1))))) (forall ( (x_39 Int) (x_40 Int) (x_41 Int) ) (=> (and  (mem2 x_39 x_40 g_fun1_1) (mem2 x_39 x_41 g_fun1_1)) (= x_40 x_41)))) (forall ( (x_42 Int) (x_43 Int) (x_44 Int) ) (=> (and  (mem2 x_43 x_42 g_fun1_1) (mem2 x_44 x_42 g_fun1_1)) (= x_43 x_44))))))
(check-sat)
(exit)
