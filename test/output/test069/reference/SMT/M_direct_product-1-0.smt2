(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_6 () Int)
(declare-fun g_c1_7 () Int)
(declare-fun g_c2_8 () Real)
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_ss_3 () (P (C Int Int)))
(declare-fun g_tt_4 () (P (C Int Int)))
(declare-fun g_uu_5 () (P (C Int Real)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int Real (P (C Int Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) (x_8 Int) ) (=> (mem2 x_8 x_7 g_ss_3) (and true true))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_ss_3) (and  (and (>= x_10 0) (<= x_10 10)) true (= (+ x_10 x_9) 15)))))
(assert (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_tt_4) (and true true))))
(assert (forall ( (x_13 Int) (x_14 Int) ) (= (mem2 x_14 x_13 g_tt_4) (or  (and (= x_14 2) (= x_13 7)) (and (= x_14 5) (= x_13 9)) (and (= x_14 2) (= x_13 6)) (and (= x_14 7) (= x_13 9)) (and (= x_14 5) (= x_13 3))))))
(assert (forall ( (x_15 Real) (x_16 Int) ) (=> (mem3 x_16 x_15 g_uu_5) (and (mem0 x_16 g_s1_1) true))))
(assert true)
(assert true)
(assert true)
; Global hypotheses
(assert (and (forall ((x_21 Int)(x_22 Int) ) (=> (and (= x_21 10) (= x_22 5)) (mem2 x_21 x_22 g_ss_3))) (forall ((x_23 Int)(x_24 Int) ) (=> (and (= x_23 10) (= x_24 2)) (mem2 x_23 x_24 g_tt_4)))))
; Local hypotheses
; Goal
(assert (not (and (mem2 g_c0_6 g_c1_7 g_rr_2) (mem3 g_c0_6 g_c2_8 g_uu_5))))
(check-sat)
(exit)
