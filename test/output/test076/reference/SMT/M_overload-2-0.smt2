(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(declare-fun g_ss_4 () (P (C Int Int)))
(declare-fun g_tt_3 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) (mem0 x_4 g_s0_0))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) (x_8 Int) ) (=> (mem2 x_8 x_7 g_tt_3) (and true true))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (=> (mem2 x_10 x_9 g_ss_4) (and true true))))
(assert (forall ( (x_11 Int) (x_12 Int) ) (= (mem2 x_12 x_11 g_ss_4) (and  (and (>= x_12 0) (<= x_12 10)) true (= (+ x_12 x_11) 15)))))
(assert true)
(assert true)
; Global hypotheses
(assert (or (and (= 10 10) (= 0 0)) (and  (forall ((x_22 Int)(x_23 Int) ) (=> (and (= x_22 10) (= x_23 0)) (mem2 x_22 x_23 g_ss_4))) (not (exists ( (x_24 Int) ) (and (= 10 10) (= x_24 0)))))))
(assert (or (and (= 10 10) (= 5 0)) (and  (forall ((x_25 Int)(x_26 Int) ) (=> (and (= x_25 10) (= x_26 5)) (mem2 x_25 x_26 g_ss_4))) (not (exists ( (x_27 Int) ) (and (= 10 10) (= x_27 0)))))))
; Local hypotheses
; Goal
(assert (not (or (mem2 g_c0_5 g_c1_6 g_tt_3) (and  (mem2 g_c0_5 g_c1_6 g_rr_2) (not (exists ( (x_28 Int) ) (mem2 g_c0_5 x_28 g_tt_3)))))))
(check-sat)
(exit)
