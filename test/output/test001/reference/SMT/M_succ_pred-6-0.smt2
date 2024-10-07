(set-option :print-success false)
(set-logic ALL)
; PO 6 0
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
(assert (= g_c1_1 (+ g_c1_1 1)))
(assert (forall ( (x_18 Int) ) (= (exists ( (x_19 Int) ) (and  (= x_19 g_c1_1) (= x_18 (+ x_19 1)))) (mem0 x_18 g_s1_0))))
(assert (forall ( (x_20 Int) ) (= (exists ( (x_21 Int) ) (and  (mem0 x_21 g_s1_0) (= x_20 (+ x_21 1)))) (mem0 x_20 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
; Local hypotheses
; Goal
(assert (not (forall ( (x_22 Int) ) (= (exists ( (x_23 Int) ) (and  (= x_23 g_c1_1) (= x_22 (- x_23 1)))) (mem0 x_22 g_s1_0)))))
(check-sat)
(exit)
