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
(declare-fun g_c0_0 () Int)
; Defines
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (< 0 g_c0_0)))
(check-sat)
(exit)
