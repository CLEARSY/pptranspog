(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_1 () Real)
(declare-fun g_s0_0 () (P Real))
; Defines
(assert true)
(assert (forall ( (x_3 Real) ) (=> (mem1 x_3 g_s0_0) true)))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (mem1 g_c0_1 g_s0_0)))
(check-sat)
(exit)
