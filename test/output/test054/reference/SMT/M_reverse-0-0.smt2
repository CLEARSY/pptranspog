(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_ii_1 () Int)
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (<= 0 g_ii_1))
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ( (x_14 Int) (x_15 Int) ) (= (or  (and (= x_15 1) (= x_14 5)) (and (= x_15 2) (= x_14 2)) (and (= x_15 3) (= x_14 0))) (and  (forall ((x_17 Int) ) (=> (forall ( (x_18 Int) ) (= (exists ( (x_19 Int) ) (or  (and (= x_18 1) (= x_19 0)) (and (= x_18 2) (= x_19 2)) (and (= x_18 3) (= x_19 5)))) (and (>= x_18 1) (<= x_18 x_17)))) (and (>= x_15 1) (<= x_15 x_17)))) (or  (and (forall ((x_20 Int) ) (=> (forall ( (x_21 Int) ) (= (exists ( (x_22 Int) ) (or  (and (= x_21 1) (= x_22 0)) (and (= x_21 2) (= x_22 2)) (and (= x_21 3) (= x_22 5)))) (and (>= x_21 1) (<= x_21 x_20)))) (= (+ (- x_20 x_15) 1) 1))) (= x_14 0)) (and (forall ((x_23 Int) ) (=> (forall ( (x_24 Int) ) (= (exists ( (x_25 Int) ) (or  (and (= x_24 1) (= x_25 0)) (and (= x_24 2) (= x_25 2)) (and (= x_24 3) (= x_25 5)))) (and (>= x_24 1) (<= x_24 x_23)))) (= (+ (- x_23 x_15) 1) 2))) (= x_14 2)) (and (forall ((x_26 Int) ) (=> (forall ( (x_27 Int) ) (= (exists ( (x_28 Int) ) (or  (and (= x_27 1) (= x_28 0)) (and (= x_27 2) (= x_28 2)) (and (= x_27 3) (= x_28 5)))) (and (>= x_27 1) (<= x_27 x_26)))) (= (+ (- x_26 x_15) 1) 3))) (= x_14 5))))))))
(check-sat)
(exit)
