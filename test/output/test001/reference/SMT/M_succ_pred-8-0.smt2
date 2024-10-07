(set-option :print-success false)
(set-logic ALL)
; PO 8 0
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
(assert (forall ( (x_32 Int) ) (= (exists ( (x_33 Int) ) (and  (= x_33 g_c1_1) (= x_32 (+ x_33 1)))) (mem0 x_32 g_s1_0))))
(assert (forall ( (x_34 Int) ) (= (exists ( (x_35 Int) ) (and  (mem0 x_35 g_s1_0) (= x_34 (+ x_35 1)))) (mem0 x_34 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
(assert (forall ( (x_36 Int) ) (= (exists ( (x_37 Int) ) (and  (= x_37 g_c1_1) (= x_36 (- x_37 1)))) (mem0 x_36 g_s1_0))))
(assert (forall ( (x_38 Int) ) (= (exists ( (x_39 Int) ) (and  (mem0 x_39 g_s1_0) (= x_38 (- x_39 1)))) (mem0 x_38 g_s1_0))))
; Local hypotheses
; Goal
(assert (not (forall ( (x_40 Int) (x_41 Int) ) (= (exists ( (x_42 Int) ) (and  (= x_42 (+ x_41 1)) (= x_40 (- x_42 1)))) (and  (= x_41 x_40) true)))))
(check-sat)
(exit)
