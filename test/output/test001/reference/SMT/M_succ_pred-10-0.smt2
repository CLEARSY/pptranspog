(set-option :print-success false)
(set-logic ALL)
; PO 10 0
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
(assert (forall ( (x_54 Int) ) (= (exists ( (x_55 Int) ) (and  (= x_55 g_c1_1) (= x_54 (+ x_55 1)))) (mem0 x_54 g_s1_0))))
(assert (forall ( (x_56 Int) ) (= (exists ( (x_57 Int) ) (and  (mem0 x_57 g_s1_0) (= x_56 (+ x_57 1)))) (mem0 x_56 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
(assert (forall ( (x_58 Int) ) (= (exists ( (x_59 Int) ) (and  (= x_59 g_c1_1) (= x_58 (- x_59 1)))) (mem0 x_58 g_s1_0))))
(assert (forall ( (x_60 Int) ) (= (exists ( (x_61 Int) ) (and  (mem0 x_61 g_s1_0) (= x_60 (- x_61 1)))) (mem0 x_60 g_s1_0))))
(assert (forall ( (x_62 Int) (x_63 Int) ) (= (exists ( (x_64 Int) ) (and  (= x_64 (+ x_63 1)) (= x_62 (- x_64 1)))) (and  (= x_63 x_62) true))))
(assert (= g_c2_2 (- g_c1_1 1)))
; Local hypotheses
; Goal
(assert (not (= g_c2_2 (+ g_c1_1 1))))
(check-sat)
(exit)
