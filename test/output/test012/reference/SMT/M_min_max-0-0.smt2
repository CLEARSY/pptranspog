(set-option :print-success false)
(set-logic ALL)
; PO 0 0
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
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_8 Int) ) (=> (= x_8 3) (mem0 x_8 g_S2_1))) (forall ( (x_7 Int) ) (=> (mem0 x_7 g_S2_1) (<= 3 x_7))))))
(check-sat)
(exit)
