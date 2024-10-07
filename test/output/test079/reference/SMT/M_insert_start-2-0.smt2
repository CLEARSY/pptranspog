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
(assert (exists ( (x_61 (P (C Int Int))) ) (and  (forall ( (x_62 Int) (x_63 Int) ) (= (mem2 x_63 x_62 x_61) (and (= x_63 1) (= x_62 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_61) (forall ((x_64 Int) ) (=> (forall ((x_65 Int) ) (=> (forall ( (x_66 Int) ) (= (exists ( (x_67 Int) ) (mem2 x_66 x_67 x_61)) (and (>= x_66 1) (<= x_66 x_65)))) (= x_64 (- g_ii_3 x_65)))) (mem2 x_64 g_c0_5 g_s0_0)))))))
(assert (exists ( (x_68 (P (C Int Int))) ) (and  (forall ( (x_69 Int) (x_70 Int) ) (= (mem2 x_70 x_69 x_68) (and (= x_70 1) (= x_69 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_68) (forall ((x_71 Int) ) (=> (forall ((x_72 Int) ) (=> (forall ( (x_73 Int) ) (= (exists ( (x_74 Int) ) (mem2 x_73 x_74 x_68)) (and (>= x_73 1) (<= x_73 x_72)))) (= x_71 (- g_ii_3 x_72)))) (mem2 x_71 g_c0_5 g_empty_seq_2)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_75 (P (C Int Int))) ) (and  (forall ( (x_76 Int) (x_77 Int) ) (= (mem2 x_77 x_76 x_75) (and (= x_77 1) (= x_76 9)))) (or  (forall ((x_78 Int)(x_79 Int) ) (=> (and (= x_78 1) (= x_79 5)) (mem2 x_78 x_79 x_75))) (forall ((x_80 Int)(x_81 Int) ) (=> (and (forall ((x_82 Int) ) (=> (forall ( (x_83 Int) ) (= (exists ( (x_84 Int) ) (mem2 x_83 x_84 x_75)) (and (>= x_83 1) (<= x_83 x_82)))) (= x_80 (- 1 x_82)))) (= x_81 5)) (mem2 x_80 x_81 g_s1_1))))))))
(check-sat)
(exit)
