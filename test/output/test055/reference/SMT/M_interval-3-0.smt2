(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (and (>= g_ii_0 g_lb_1) (<= g_ii_0 g_ub_2)))
(assert (and (>= 5 1) (<= 5 7)))
(assert (and (>= 0 2) (<= 0 1)))
; Local hypotheses
; Goal
(assert (not (and (>= (* 2 g_ii_0) (- g_ub_2)) (<= (* 2 g_ii_0) (- g_lb_1)))))
(check-sat)
(exit)
