(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_ii_2 () Int)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (and  true (< x_4 10)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S2_1) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (and  true (= (mod x_6 2) 0)))))
(assert true)
; Global hypotheses
(assert (or (or  (= 5 5) (= 5 4) (= 5 1) (= 5 1) (= 5 2) (= 5 3) (= 5 8)) (or  (= 5 5) (= 5 1) (= 5 3))))
; Local hypotheses
; Goal
(assert (not (or (mem0 g_ii_2 g_S1_0) (mem0 g_ii_2 g_S2_1))))
(check-sat)
(exit)
