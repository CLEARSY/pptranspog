(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_5 () Int)
(declare-fun g_c1_6 () Int)
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_s2_4 () (P Int))
(declare-fun g_ss_3 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) (mem0 x_4 g_s0_0))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) (x_8 Int) ) (=> (mem2 x_8 x_7 g_ss_3) (and true true))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_ss_3) (and  (and (>= x_10 0) (<= x_10 10)) true (= (+ x_10 x_9) 15)))))
(assert true)
(assert true)
(assert (forall ( (x_11 Int) ) (=> (mem0 x_11 g_s2_4) (mem0 x_11 g_s1_1))))
; Global hypotheses
(assert (and  (forall ((x_14 Int)(x_15 Int) ) (=> (and (= x_14 10) (= x_15 5)) (mem2 x_14 x_15 g_ss_3))) (not (and (>= 5 8) (<= 5 10)))))
; Local hypotheses
; Goal
(assert (not (and  (mem2 g_c0_5 g_c1_6 g_rr_2) (not (mem0 g_c1_6 g_s2_4)))))
(check-sat)
(exit)
