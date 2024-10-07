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
(declare-sort S0 2 )
(declare-fun g__res1_1_1 () Int)
(declare-fun g__res1_2_2 () Bool)
(declare-fun g__res2_1_3 () Int)
(declare-fun g__res2_2_4 () Bool)
(declare-fun g_res_set_0 () (P (S0 Int Bool)))
(declare-fun mem2 ( Int Bool (P (S0 Int Bool))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Bool) ) (= (mem2 x_3 x_4 g_res_set_0) (and  (and (>= x_3 0) (<= x_3 20)) true))))
(assert (and  (= g__res1_1_1 12) (= g__res1_2_2 true)))
(assert (and  (= g__res2_1_3 9) (= g__res2_2_4 false)))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (= g__res1_1_1 12)))
(check-sat)
(exit)
