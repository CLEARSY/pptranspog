(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(declare-fun g_fun1_1 () (P (C Int Int)))
(declare-fun g_fun2_2 () (P (C Int Int)))
(declare-fun g_fun3_3 () (P (C Int Int)))
(declare-fun g_fun4_4 () (P (C Real Real)))
(declare-fun g_rel1_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Real Real (P (C Real Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (= (mem2 x_4 x_3 g_rel1_0) (or  (and (= x_4 2) (= x_3 7)) (and (= x_4 5) (= x_3 9)) (and (= x_4 2) (= x_3 6)) (and (= x_4 7) (= x_3 9)) (and (= x_4 5) (= x_3 3))))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_fun1_1) (and true true))))
(assert (forall ( (x_7 Int) ) (= (exists ( (x_8 Int) ) (mem2 x_7 x_8 g_fun1_1)) (and (>= x_7 0) (<= x_7 2)))))
(assert (forall ( (x_9 Int) ) (= (exists ( (x_10 Int) ) (mem2 x_10 x_9 g_fun1_1)) (and (>= x_9 1) (<= x_9 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_11 Int) ) (mem2 l_xx x_11 g_fun1_1)) (forall ((x_12 Int) ) (=> (= x_12 (+ l_xx 1)) (mem2 l_xx x_12 g_fun1_1))))))
(assert (forall ( (x_13 Int) (x_14 Int) ) (= (mem2 x_14 x_13 g_fun2_2) (and  (and (>= x_14 0) (<= x_14 2)) (= x_13 (+ x_14 1))))))
(assert (forall ( (x_15 Int) (x_16 Int) ) (= (mem2 x_16 x_15 g_fun3_3) (and  (and (>= x_16 0) (<= x_16 2)) (= x_15 (+ x_16 1))))))
(assert (forall ( (x_17 Real) (x_18 Real) ) (=> (mem3 x_18 x_17 g_fun4_4) (and true true))))
; Global hypotheses
(assert (and (and (forall ( (x_45 Int) (x_46 Int) ) (=> (mem2 x_46 x_45 g_rel1_0) (and (and (>= x_46 0) (<= x_46 7)) (and (>= x_45 0) (<= x_45 10))))) (forall ( (x_47 Int) (x_48 Int) (x_49 Int) ) (=> (and  (mem2 x_47 x_48 g_rel1_0) (mem2 x_47 x_49 g_rel1_0)) (= x_48 x_49)))) (forall ( (x_50 Int) (x_51 Int) (x_52 Int) ) (=> (and  (mem2 x_51 x_50 g_rel1_0) (mem2 x_52 x_50 g_rel1_0)) (= x_51 x_52)))))
(assert (and (and (forall ( (x_53 Int) (x_54 Int) ) (=> (mem2 x_54 x_53 g_fun1_1) (and (exists ( (x_55 Int) ) (mem2 x_54 x_55 g_fun1_1)) (exists ( (x_56 Int) ) (mem2 x_56 x_53 g_fun1_1))))) (forall ( (x_57 Int) (x_58 Int) (x_59 Int) ) (=> (and  (mem2 x_57 x_58 g_fun1_1) (mem2 x_57 x_59 g_fun1_1)) (= x_58 x_59)))) (forall ( (x_60 Int) (x_61 Int) (x_62 Int) ) (=> (and  (mem2 x_61 x_60 g_fun1_1) (mem2 x_62 x_60 g_fun1_1)) (= x_61 x_62)))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_63 Int) (x_64 Int) ) (=> (mem2 x_64 x_63 g_fun2_2) (and true true))) (forall ( (x_65 Int) (x_66 Int) (x_67 Int) ) (=> (and  (mem2 x_65 x_66 g_fun2_2) (mem2 x_65 x_67 g_fun2_2)) (= x_66 x_67)))) (forall ( (x_68 Int) (x_69 Int) (x_70 Int) ) (=> (and  (mem2 x_69 x_68 g_fun2_2) (mem2 x_70 x_68 g_fun2_2)) (= x_69 x_70))))))
(check-sat)
(exit)
