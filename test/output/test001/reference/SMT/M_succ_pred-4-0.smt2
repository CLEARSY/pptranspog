(set-option :print-success false)
(set-logic ALL)
; PO 4 0
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
(assert (forall ( (x_10 Int) ) (= (exists ( (x_11 Int) ) (and  (= x_11 g_c1_1) (= x_10 (+ x_11 1)))) (mem0 x_10 g_s1_0))))
(assert (forall ( (x_12 Int) ) (= (exists ( (x_13 Int) ) (and  (mem0 x_13 g_s1_0) (= x_12 (+ x_13 1)))) (mem0 x_12 g_s1_0))))
; Local hypotheses
; Goal
(assert (not (= 1 (- 1 1))))
(check-sat)
(exit)
