(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(assert (and  (forall ((x_14 Int) ) (=> (= x_14 3) (mem0 x_14 g_S2_1))) (forall ( (x_13 Int) ) (=> (mem0 x_13 g_S2_1) (<= 3 x_13)))))
(assert (and  (forall ((x_16 Int) ) (=> (= x_16 1) (mem0 x_16 g_S2_1))) (forall ( (x_15 Int) ) (=> (mem0 x_15 g_S2_1) (>= 1 x_15)))))
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_18 Int) ) (=> (= x_18 1) (mem0 x_18 g_S2_1))) (forall ( (x_17 Int) ) (=> (mem0 x_17 g_S2_1) (<= 1 x_17))))))
(check-sat)
(exit)
