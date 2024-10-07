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
(declare-fun g_c1_1 () Int)
(declare-fun g_s1_0 () (P Int))
; Defines
(assert true)
(assert true)
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s1_0) true)))
; Global hypotheses
(assert (= 1 (+ 1 1)))
; Local hypotheses
; Goal
(assert (not (= g_c1_1 (+ g_c1_1 1))))
(check-sat)
(exit)
