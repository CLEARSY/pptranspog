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
(declare-fun g_c1_4 () Int)
(declare-fun g_empty_seq_2 () (P (C Int Int)))
(declare-fun g_ii_3 () Int)
(declare-fun g_s0_0 () (P (C Int Int)))
(declare-fun g_s1_1 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_s0_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (exists ( (x_14 Int) ) (exists ( (x_15 (P (C Int Int))) ) (and (forall ( (x_16 Int) (x_17 Int) ) (= (mem2 x_17 x_16 x_15) (mem2 x_17 x_16 g_s1_1))) (forall ( (x_18 Int) (x_19 Int) (x_20 Int) ) (=> (and  (mem2 x_18 x_19 x_15) (mem2 x_18 x_20 x_15)) (= x_19 x_20))) (forall ( (x_21 Int) ) (= (and (>= x_21 1) (<= x_21 x_14)) (exists ( (x_22 Int) ) (mem2 x_21 x_22 x_15)))) (forall ( (x_23 Int) ) (=> (exists ( (x_24 Int) ) (mem2 x_24 x_23 x_15)) true))))))
(assert (forall ( (x_25 Int) (x_26 Int) ) (= (mem2 x_26 x_25 g_s1_1) (or  (and (= x_26 1) (= x_25 5)) (and (= x_26 2) (= x_25 4)) (and (= x_26 3) (= x_25 1)) (and (= x_26 4) (= x_25 1)) (and (= x_26 5) (= x_25 2)) (and (= x_26 6) (= x_25 3)) (and (= x_26 7) (= x_25 8))))))
(assert (exists ( (x_27 Int) ) (exists ( (x_28 (P (C Int Int))) ) (and (forall ( (x_29 Int) (x_30 Int) ) (= (mem2 x_30 x_29 x_28) (mem2 x_30 x_29 g_empty_seq_2))) (forall ( (x_31 Int) (x_32 Int) (x_33 Int) ) (=> (and  (mem2 x_31 x_32 x_28) (mem2 x_31 x_33 x_28)) (= x_32 x_33))) (forall ( (x_34 Int) ) (= (and (>= x_34 1) (<= x_34 x_27)) (exists ( (x_35 Int) ) (mem2 x_34 x_35 x_28)))) (forall ( (x_36 Int) ) (=> (exists ( (x_37 Int) ) (mem2 x_37 x_36 x_28)) true))))))
(assert (forall ( (x_38 Int) (x_39 Int) ) (= (mem2 x_39 x_38 g_empty_seq_2) false)))
(assert (<= 0 g_ii_3))
(assert true)
(assert true)
; Global hypotheses
(assert (exists ( (x_47 (P (C Int Int))) ) (and  (forall ( (x_48 Int) (x_49 Int) ) (= (mem2 x_49 x_48 x_47) (and (= x_49 1) (= x_48 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_47) (forall ((x_50 Int) ) (=> (forall ((x_51 Int) ) (=> (forall ( (x_52 Int) ) (= (exists ( (x_53 Int) ) (mem2 x_52 x_53 x_47)) (and (>= x_52 1) (<= x_52 x_51)))) (= x_50 (- g_ii_3 x_51)))) (mem2 x_50 g_c0_5 g_s0_0)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_54 (P (C Int Int))) ) (and  (forall ( (x_55 Int) (x_56 Int) ) (= (mem2 x_56 x_55 x_54) (and (= x_56 1) (= x_55 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_54) (forall ((x_57 Int) ) (=> (forall ((x_58 Int) ) (=> (forall ( (x_59 Int) ) (= (exists ( (x_60 Int) ) (mem2 x_59 x_60 x_54)) (and (>= x_59 1) (<= x_59 x_58)))) (= x_57 (- g_ii_3 x_58)))) (mem2 x_57 g_c0_5 g_empty_seq_2))))))))
(check-sat)
(exit)
