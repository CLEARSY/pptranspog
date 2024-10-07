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
(declare-fun g_c0_2 () Int)
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (and  (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)) (not (forall ( (x_5 Int) ) (= (mem0 x_5 g_s1_1) false)))))
(assert true)
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (mem0 g_c0_2 g_s0_0)))
(check-sat)
(exit)
