(set-option :print-success false)
(set-logic ALL)
; PO 0 2
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
; Defines
(assert true)
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not true))
(check-sat)
(exit)
