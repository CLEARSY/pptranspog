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
(declare-fun g_c0_1 () Int)
(declare-fun g_pairs_0 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (= (mem0 x_3 g_pairs_0) (and  true (= (mod x_3 2) 0)))))
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (mem0 g_c0_1 g_pairs_0)))
(check-sat)
(exit)
