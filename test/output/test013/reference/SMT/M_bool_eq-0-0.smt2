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
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (or  (= x_4 1) (= x_4 2) (= x_4 3)))))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (= (forall ((x_5 Int) ) (=> (= x_5 3) (mem0 x_5 g_S1_0))) (forall ((x_6 Int) ) (=> (= x_6 1) (mem0 x_6 g_S1_0))))))
(check-sat)
(exit)
