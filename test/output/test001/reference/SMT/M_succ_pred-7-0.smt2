(set-option :print-success false)
(set-logic ALL)
; PO 7 0
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
(assert (forall ( (x_24 Int) ) (= (exists ( (x_25 Int) ) (and  (= x_25 g_c1_1) (= x_24 (+ x_25 1)))) (mem0 x_24 g_s1_0))))
(assert (forall ( (x_26 Int) ) (= (exists ( (x_27 Int) ) (and  (mem0 x_27 g_s1_0) (= x_26 (+ x_27 1)))) (mem0 x_26 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
(assert (forall ( (x_28 Int) ) (= (exists ( (x_29 Int) ) (and  (= x_29 g_c1_1) (= x_28 (- x_29 1)))) (mem0 x_28 g_s1_0))))
; Local hypotheses
; Goal
(assert (not (forall ( (x_30 Int) ) (= (exists ( (x_31 Int) ) (and  (mem0 x_31 g_s1_0) (= x_30 (- x_31 1)))) (mem0 x_30 g_s1_0)))))
(check-sat)
(exit)
