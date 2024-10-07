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
(declare-fun g_empty_set_0 () (P Int))
(declare-fun g_ss_1 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_empty_set_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_empty_set_0) false)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_ss_1) true)))
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (or  (= 2 5) (= 2 4) (= 2 1) (= 2 1) (= 2 2) (= 2 3) (= 2 8))))
(check-sat)
(exit)
