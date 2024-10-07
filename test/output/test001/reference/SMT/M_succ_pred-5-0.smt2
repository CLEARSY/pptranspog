(set-option :print-success false)
(set-logic ALL)
; PO 5 0
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
(assert (forall ( (x_14 Int) ) (= (exists ( (x_15 Int) ) (and  (= x_15 g_c1_1) (= x_14 (+ x_15 1)))) (mem0 x_14 g_s1_0))))
(assert (forall ( (x_16 Int) ) (= (exists ( (x_17 Int) ) (and  (mem0 x_17 g_s1_0) (= x_16 (+ x_17 1)))) (mem0 x_16 g_s1_0))))
(assert (= 1 (- 1 1)))
; Local hypotheses
; Goal
(assert (not (= g_c1_1 (- g_c1_1 1))))
(check-sat)
(exit)
