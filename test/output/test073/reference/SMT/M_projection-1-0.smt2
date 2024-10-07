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
(declare-fun g_c0_4 () Int)
(declare-fun g_c1_6 () Int)
(declare-fun g_c2_5 () Int)
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_ss_3 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) (mem0 x_4 g_s0_0))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) ) (=> (mem0 x_7 g_ss_3) true)))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_ss_3) (and  (and (>= x_8 0) (<= x_8 10)) (= (mod x_8 2) 0)))))
(assert true)
(assert true)
(assert true)
; Global hypotheses
(assert (and  (= 10 5) (forall ((x_10 Int) ) (=> (= x_10 10) (mem0 x_10 g_ss_3))) (and (>= 5 0) (<= 5 5))))
; Local hypotheses
; Goal
(assert (not (and  (= g_c0_4 g_c2_5) (mem0 g_c0_4 g_s0_0) (mem0 g_c1_6 g_s1_1))))
(check-sat)
(exit)
