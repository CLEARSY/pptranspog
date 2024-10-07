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
(declare-fun g_ii_0 () Int)
(declare-fun g_lb_1 () Int)
(declare-fun g_ub_2 () Int)
; Defines
(assert true)
(assert true)
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (and (>= g_ii_0 g_lb_1) (<= g_ii_0 g_ub_2))))
(check-sat)
(exit)
