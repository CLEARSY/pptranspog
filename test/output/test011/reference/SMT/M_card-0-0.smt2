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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (exists ( (x_9 (P (C Int Int))) ) (and (and (exists ( (x_10 (P (C Int Int))) ) (and (forall ( (x_11 Int) (x_12 Int) ) (= (mem2 x_12 x_11 x_10) (mem2 x_12 x_11 x_9))) (forall ( (x_13 Int) (x_14 Int) (x_15 Int) ) (=> (and  (mem2 x_13 x_14 x_10) (mem2 x_13 x_15 x_10)) (= x_14 x_15))) (forall ( (x_16 Int) ) (= (mem0 x_16 g_S1_0) (exists ( (x_17 Int) ) (mem2 x_16 x_17 x_10)))) (forall ( (x_18 Int) ) (=> (exists ( (x_19 Int) ) (mem2 x_19 x_18 x_10)) (and (>= x_18 1) (<= x_18 0)))))) (forall ( (x_20 Int) ) (=> (and (>= x_20 1) (<= x_20 0)) (exists ( (x_21 Int) ) (mem2 x_21 x_20 x_9))))) (forall ( (x_22 Int) (x_23 Int) (x_24 Int) ) (=> (and  (mem2 x_23 x_22 x_9) (mem2 x_24 x_22 x_9)) (= x_23 x_24)))))))
(check-sat)
(exit)
