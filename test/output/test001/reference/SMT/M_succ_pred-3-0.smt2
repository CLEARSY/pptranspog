(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (forall ( (x_6 Int) ) (= (exists ( (x_7 Int) ) (and  (= x_7 g_c1_1) (= x_6 (+ x_7 1)))) (mem0 x_6 g_s1_0))))
; Local hypotheses
; Goal
(assert (not (forall ( (x_8 Int) ) (= (exists ( (x_9 Int) ) (and  (mem0 x_9 g_s1_0) (= x_8 (+ x_9 1)))) (mem0 x_8 g_s1_0)))))
(check-sat)
(exit)
