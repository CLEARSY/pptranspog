(set-option :print-success false)
(set-logic ALL)
; PO 9 0
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
(declare-fun g_c2_2 () Int)
(declare-fun g_s1_0 () (P Int))
; Defines
(assert true)
(assert true)
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s1_0) true)))
; Global hypotheses
(assert (= 1 (+ 1 1)))
(assert (= g_c1_1 (+ g_c1_1 1)))
(assert (forall ( (x_43 Int) ) (= (exists ( (x_44 Int) ) (and  (= x_44 g_c1_1) (= x_43 (+ x_44 1)))) (mem0 x_43 g_s1_0))))
(assert (forall ( (x_45 Int) ) (= (exists ( (x_46 Int) ) (and  (mem0 x_46 g_s1_0) (= x_45 (+ x_46 1)))) (mem0 x_45 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
(assert (forall ( (x_47 Int) ) (= (exists ( (x_48 Int) ) (and  (= x_48 g_c1_1) (= x_47 (- x_48 1)))) (mem0 x_47 g_s1_0))))
(assert (forall ( (x_49 Int) ) (= (exists ( (x_50 Int) ) (and  (mem0 x_50 g_s1_0) (= x_49 (- x_50 1)))) (mem0 x_49 g_s1_0))))
(assert (forall ( (x_51 Int) (x_52 Int) ) (= (exists ( (x_53 Int) ) (and  (= x_53 (+ x_52 1)) (= x_51 (- x_53 1)))) (and  (= x_52 x_51) true))))
; Local hypotheses
; Goal
(assert (not (= g_c2_2 (- g_c1_1 1))))
(check-sat)
(exit)
