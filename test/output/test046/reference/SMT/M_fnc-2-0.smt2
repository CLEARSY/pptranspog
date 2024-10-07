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
(declare-fun g_ss_3 () (P (C Int Int)))
(declare-fun g_tt_4 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) (x_8 Int) ) (=> (mem2 x_8 x_7 g_ss_3) (and true true))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_ss_3) (and  (and (>= x_10 0) (<= x_10 10)) true (= (+ x_10 x_9) 15)))))
(assert (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_tt_4) (and true true))))
(assert (forall ( (x_13 Int) (x_14 Int) ) (= (mem2 x_14 x_13 g_tt_4) (or  (and (= x_14 2) (= x_13 7)) (and (= x_14 5) (= x_13 9)) (and (= x_14 2) (= x_13 6)) (and (= x_14 7) (= x_13 9)) (and (= x_14 5) (= x_13 3))))))
(assert true)
(assert true)
; Global hypotheses
(assert (and  (exists ( (x_29 Int) ) (mem2 g_c0_5 x_29 g_rr_2)) (forall ( (x_30 Int) ) (= (= x_30 g_c1_6) (exists ( (x_31 Int) ) (and  (= x_31 g_c0_5) (mem2 x_31 x_30 g_rr_2)))))))
(assert (and  (exists ( (x_33 Int) ) (forall ((x_34 Int) ) (=> (= x_34 10) (mem2 x_34 x_33 g_ss_3)))) (forall ( (x_35 Int) ) (= (= x_35 5) (exists ( (x_36 Int) ) (and  (= x_36 10) (mem2 x_36 x_35 g_ss_3)))))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_38 Int) ) (forall ((x_39 Int) ) (=> (= x_39 5) (mem2 x_39 x_38 g_tt_4)))) (forall ( (x_40 Int) ) (= (= x_40 9) (exists ( (x_41 Int) ) (and  (= x_41 5) (mem2 x_41 x_40 g_tt_4))))))))
(check-sat)
(exit)
