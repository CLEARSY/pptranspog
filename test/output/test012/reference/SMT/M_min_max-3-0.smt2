(set-option :print-success false)
(set-logic ALL)
; PO 3 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (= (mem0 x_5 g_S1_0) (= x_5 1))))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (or  (= x_6 1) (= x_6 2) (= x_6 3)))))
; Global hypotheses
(assert (and  (forall ((x_20 Int) ) (=> (= x_20 3) (mem0 x_20 g_S2_1))) (forall ( (x_19 Int) ) (=> (mem0 x_19 g_S2_1) (<= 3 x_19)))))
(assert (and  (forall ((x_22 Int) ) (=> (= x_22 1) (mem0 x_22 g_S2_1))) (forall ( (x_21 Int) ) (=> (mem0 x_21 g_S2_1) (>= 1 x_21)))))
(assert (and  (forall ((x_24 Int) ) (=> (= x_24 1) (mem0 x_24 g_S2_1))) (forall ( (x_23 Int) ) (=> (mem0 x_23 g_S2_1) (<= 1 x_23)))))
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_26 Int) ) (=> (= x_26 3) (mem0 x_26 g_S2_1))) (forall ( (x_25 Int) ) (=> (mem0 x_25 g_S2_1) (>= 3 x_25))))))
(check-sat)
(exit)
