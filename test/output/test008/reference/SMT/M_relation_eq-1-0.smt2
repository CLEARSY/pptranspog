(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_fun1_1 () (P (C Int Int)))
(declare-fun g_fun2_2 () (P (C Int Int)))
(declare-fun g_fun3_3 () (P (C Int Int)))
(declare-fun g_rel1_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (= (mem2 x_4 x_3 g_rel1_0) (or  (and (= x_4 2) (= x_3 7)) (and (= x_4 5) (= x_3 9)) (and (= x_4 2) (= x_3 6)) (and (= x_4 7) (= x_3 9)) (and (= x_4 5) (= x_3 3))))))
(assert (and (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_fun1_1) (and true true))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 g_fun1_1) (mem2 x_7 x_9 g_fun1_1)) (= x_8 x_9)))))
(assert (forall ( (x_10 Int) ) (= (exists ( (x_11 Int) ) (mem2 x_10 x_11 g_fun1_1)) (and (>= x_10 0) (<= x_10 2)))))
(assert (forall ( (x_12 Int) ) (= (exists ( (x_13 Int) ) (mem2 x_13 x_12 g_fun1_1)) (and (>= x_12 1) (<= x_12 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_14 Int) ) (mem2 l_xx x_14 g_fun1_1)) (forall ((x_15 Int) ) (=> (= x_15 (+ l_xx 1)) (mem2 l_xx x_15 g_fun1_1))))))
(assert (forall ( (x_16 Int) (x_17 Int) ) (= (mem2 x_17 x_16 g_fun2_2) (and  (and (>= x_17 0) (<= x_17 2)) (= x_16 (+ x_17 1))))))
(assert (forall ( (x_18 Int) (x_19 Int) ) (= (mem2 x_19 x_18 g_fun3_3) (and  (and (>= x_19 0) (<= x_19 2)) (= x_18 (+ x_19 1))))))
; Global hypotheses
(assert (forall ((x_22 Int)(x_23 Int) ) (=> (and (= x_22 2) (= x_23 7)) (mem2 x_22 x_23 g_rel1_0))))
(assert (forall ((x_24 Int)(x_25 Int) ) (=> (and (= x_24 2) (= x_25 7)) (mem2 x_24 x_25 g_rel1_0))))
; Local hypotheses
; Goal
(assert (not (forall ((x_26 Int)(x_27 Int) ) (=> (and (= x_26 1) (= x_27 3)) (mem2 x_26 x_27 g_fun1_1)))))
(check-sat)
(exit)
