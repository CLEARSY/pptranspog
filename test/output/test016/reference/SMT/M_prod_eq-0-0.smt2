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
(declare-fun g_ff_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (= (mem2 x_4 x_3 g_ff_0) (and  (and (>= x_4 0) (<= x_4 2)) (= x_3 (* x_4 2))))))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (and (= 3 (+ 2 1)) (forall ((x_5 Int)(x_6 Int) ) (=> (and (= x_5 2) (= x_6 4)) (mem2 x_5 x_6 g_ff_0))))))
(check-sat)
(exit)
