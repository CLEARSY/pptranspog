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
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (forall ( (x_14 Int) (x_15 Int) ) (= (mem2 x_15 x_14 g_ss_0) (or  (and (= x_15 1) (= x_14 7)) (and (= x_15 2) (= x_14 18)) (and (= x_15 3) (= x_14 18)) (and (= x_15 4) (= x_14 21))))))
; Global hypotheses
(assert (forall ((x_26 Int)(x_27 Int) ) (=> (and (= x_26 1) (= x_27 7)) (mem2 x_26 x_27 g_ss_0))))
(assert (forall ((x_28 Int)(x_29 Int) ) (=> (and (= x_28 1) (= x_29 7)) (mem2 x_28 x_29 g_ss_0))))
(assert (forall ((x_30 Int)(x_31 Int) ) (=> (and (forall ( (x_32 Int) ) (= (exists ( (x_33 Int) ) (mem2 x_32 x_33 g_ss_0)) (and (>= x_32 1) (<= x_32 x_30)))) (= x_31 21)) (mem2 x_30 x_31 g_ss_0))))
(assert (forall ((x_34 Int)(x_35 Int) ) (=> (and (forall ( (x_36 Int) ) (= (exists ( (x_37 Int) ) (mem2 x_36 x_37 g_ss_0)) (and (>= x_36 1) (<= x_36 x_34)))) (= x_35 21)) (mem2 x_34 x_35 g_ss_0))))
; Local hypotheses
; Goal
(assert (not (forall ((x_38 Int)(x_39 Int) ) (=> (and (= x_38 1) (and  (forall ((x_41 Int)(x_42 Int)(x_43 Int) ) (=> (and (forall ( (x_44 Int) ) (= (exists ( (x_45 Int) ) (and  (forall ((x_47 Int) ) (=> (forall ( (x_48 Int) ) (= (exists ( (x_49 Int) ) (mem2 x_48 x_49 g_ss_0)) (and (>= x_48 1) (<= x_48 x_47)))) (and (>= x_44 1) (<= x_44 x_47)))) (forall ((x_50 Int) ) (=> (forall ((x_51 Int) ) (=> (forall ( (x_52 Int) ) (= (exists ( (x_53 Int) ) (mem2 x_52 x_53 g_ss_0)) (and (>= x_52 1) (<= x_52 x_51)))) (= x_50 (+ (- x_51 x_44) 1)))) (mem2 x_50 x_45 g_ss_0))))) (and (>= x_44 1) (<= x_44 x_41)))) (forall ( (x_54 Int) ) (= (exists ( (x_55 Int) ) (and  (forall ((x_57 Int) ) (=> (forall ( (x_58 Int) ) (= (exists ( (x_59 Int) ) (mem2 x_58 x_59 g_ss_0)) (and (>= x_58 1) (<= x_58 x_57)))) (and (>= x_54 1) (<= x_54 x_57)))) (forall ((x_60 Int) ) (=> (forall ((x_61 Int) ) (=> (forall ( (x_62 Int) ) (= (exists ( (x_63 Int) ) (mem2 x_62 x_63 g_ss_0)) (and (>= x_62 1) (<= x_62 x_61)))) (= x_60 (+ (- x_61 x_54) 1)))) (mem2 x_60 x_55 g_ss_0))))) (and (>= x_54 1) (<= x_54 x_42)))) (forall ( (x_64 Int) ) (= (exists ( (x_65 Int) ) (mem2 x_64 x_65 g_ss_0)) (and (>= x_64 1) (<= x_64 x_43))))) (and (>= x_41 1) (<= x_42 x_43)))) (forall ((x_66 Int) ) (=> (forall ((x_67 Int)(x_68 Int) ) (=> (and (forall ( (x_69 Int) ) (= (exists ( (x_70 Int) ) (mem2 x_69 x_70 g_ss_0)) (and (>= x_69 1) (<= x_69 x_67)))) (forall ( (x_71 Int) ) (= (exists ( (x_72 Int) ) (and  (forall ((x_74 Int) ) (=> (forall ( (x_75 Int) ) (= (exists ( (x_76 Int) ) (mem2 x_75 x_76 g_ss_0)) (and (>= x_75 1) (<= x_75 x_74)))) (and (>= x_71 1) (<= x_71 x_74)))) (forall ((x_77 Int) ) (=> (forall ((x_78 Int) ) (=> (forall ( (x_79 Int) ) (= (exists ( (x_80 Int) ) (mem2 x_79 x_80 g_ss_0)) (and (>= x_79 1) (<= x_79 x_78)))) (= x_77 (+ (- x_78 x_71) 1)))) (mem2 x_77 x_72 g_ss_0))))) (and (>= x_71 1) (<= x_71 x_68))))) (= x_66 (+ (- x_67 x_68) 1)))) (mem2 x_66 x_39 g_ss_0))))) (mem2 x_38 x_39 g_ss_0)))))
(check-sat)
(exit)
