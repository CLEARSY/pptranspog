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
(declare-fun g_set1_0 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_set1_0) true)))
(assert true)
(assert (and true true))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ((x_4 Int) ) (=> (= x_4 5) (mem0 x_4 g_set1_0)))))
(check-sat)
(exit)
