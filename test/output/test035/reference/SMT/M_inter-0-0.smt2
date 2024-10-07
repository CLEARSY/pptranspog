(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P (P Int)))
(declare-fun g_S2_1 () (P Real))
(declare-fun g_xx_2 () Int)
(declare-fun mem2 ( (P Int) (P (P Int))) Bool)
; Defines
(assert (forall ( (x_3 (P Int)) ) (=> (mem2 x_3 g_S1_0) (forall ( (x_4 Int) ) (=> (mem0 x_4 x_3) true)))))
(assert (forall ( (x_5 (P Int)) ) (= (mem2 x_5 g_S1_0) (or  (forall ( (x_6 Int) ) (= (mem0 x_6 x_5) (or  (= x_6 5) (= x_6 4)))) (forall ( (x_7 Int) ) (= (mem0 x_7 x_5) (= x_7 1))) (forall ( (x_8 Int) ) (= (mem0 x_8 x_5) (or  (= x_8 1) (= x_8 2) (= x_8 3))))))))
(assert (forall ( (x_9 Real) ) (=> (mem1 x_9 g_S2_1) true)))
(assert (forall ( (x_10 Real) ) (= (mem1 x_10 g_S2_1) (or  (= x_10 4.1) (= x_10 2.3) (= x_10 0.2)))))
(assert true)
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ( (l_val (P Int)) ) (=> (mem2 l_val g_S1_0) (mem0 g_xx_2 l_val)))))
(check-sat)
(exit)
