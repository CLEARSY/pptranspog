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
(declare-fun g_double_0 () (P (C Int Int)))
(declare-fun g_pairs1_1 () (P Int))
(declare-fun g_pairs2_2 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (=> (mem2 x_4 x_3 g_double_0) (and true true))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 g_double_0) (and  true (= x_5 (* x_6 2))))))
(assert (forall ( (x_7 Int) ) (=> (mem0 x_7 g_pairs1_1) true)))
(assert (forall ( (x_8 Int) ) (=> (mem0 x_8 g_pairs2_2) true)))
(assert (forall ( (x_9 Int) ) (= (mem0 x_9 g_pairs1_1) (exists ( (x_10 Int) ) (mem2 x_10 x_9 g_double_0)))))
(assert (forall ( (x_11 Int) ) (= (mem0 x_11 g_pairs2_2) (and  true (= (mod x_11 2) 0)))))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ( (x_12 Int) ) (= (mem0 x_12 g_pairs1_1) (mem0 x_12 g_pairs2_2)))))
(check-sat)
(exit)
