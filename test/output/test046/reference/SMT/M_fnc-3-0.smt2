(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (and  (exists ( (x_43 Int) ) (mem2 g_c0_5 x_43 g_rr_2)) (forall ( (x_44 Int) ) (= (= x_44 g_c1_6) (exists ( (x_45 Int) ) (and  (= x_45 g_c0_5) (mem2 x_45 x_44 g_rr_2)))))))
(assert (and  (exists ( (x_47 Int) ) (forall ((x_48 Int) ) (=> (= x_48 10) (mem2 x_48 x_47 g_ss_3)))) (forall ( (x_49 Int) ) (= (= x_49 5) (exists ( (x_50 Int) ) (and  (= x_50 10) (mem2 x_50 x_49 g_ss_3)))))))
(assert (and  (exists ( (x_52 Int) ) (forall ((x_53 Int) ) (=> (= x_53 5) (mem2 x_53 x_52 g_tt_4)))) (forall ( (x_54 Int) ) (= (= x_54 9) (exists ( (x_55 Int) ) (and  (= x_55 5) (mem2 x_55 x_54 g_tt_4)))))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_57 Int) ) (forall ((x_58 Int) ) (=> (= x_58 2) (mem2 x_58 x_57 g_tt_4)))) (forall ( (x_59 Int) ) (= (or  (= x_59 6) (= x_59 7)) (exists ( (x_60 Int) ) (and  (= x_60 2) (mem2 x_60 x_59 g_tt_4))))))))
(check-sat)
(exit)
