(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_2 () Int)
(declare-fun g_c1_3 () Int)
(declare-fun g_fun1_1 () (P (C Int (P Int))))
(declare-fun g_rel1_0 () (P (C Int (P Int))))
(declare-fun mem2 ( Int (P Int) (P (C Int (P Int)))) Bool)
; Defines
(assert (forall ( (x_3 (P Int)) (x_4 Int) ) (= (mem2 x_4 x_3 g_rel1_0) (or  (and (= x_4 2) (forall ( (x_5 Int) ) (= (mem0 x_5 x_3) (or  (= x_5 7) (= x_5 5))))) (and (= x_4 5) (forall ( (x_6 Int) ) (= (mem0 x_6 x_3) (= x_6 7)))) (and (= x_4 2) (forall ( (x_7 Int) ) (= (mem0 x_7 x_3) (= x_7 6)))) (and (= x_4 7) (forall ( (x_8 Int) ) (= (mem0 x_8 x_3) false)))))))
(assert (forall ( (x_9 (P Int)) (x_10 Int) ) (=> (mem2 x_10 x_9 g_fun1_1) (and true (forall ( (x_11 Int) ) (=> (mem0 x_11 x_9) true))))))
(assert true)
(assert true)
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ((x_12 (P Int)) ) (=> (mem2 g_c1_3 x_12 g_fun1_1) (mem0 g_c0_2 x_12)))))
(check-sat)
(exit)
