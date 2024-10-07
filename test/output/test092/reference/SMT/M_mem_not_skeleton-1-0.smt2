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
(declare-fun g_c0_1 () Int)
(declare-fun g_set1_0 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_set1_0) true)))
(assert true)
(assert (and true true))
; Global hypotheses
(assert (forall ((x_5 Int) ) (=> (= x_5 5) (mem0 x_5 g_set1_0))))
; Local hypotheses
; Goal
(assert (not (and (forall ((x_6 Int) ) (=> (= x_6 5) (mem0 x_6 g_set1_0))) (mem0 g_c0_1 g_set1_0))))
(check-sat)
(exit)
