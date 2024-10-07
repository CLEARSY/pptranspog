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
(assert (and (and (exists ( (x_34 (P (C Int Int))) ) (and (forall ( (x_35 Int) (x_36 Int) ) (= (mem2 x_36 x_35 x_34) (mem2 x_36 x_35 g_rel1_0))) (forall ( (x_37 Int) (x_38 Int) (x_39 Int) ) (=> (and  (mem2 x_37 x_38 x_34) (mem2 x_37 x_39 x_34)) (= x_38 x_39))) (forall ( (x_40 Int) ) (= (and (>= x_40 0) (<= x_40 7)) (exists ( (x_41 Int) ) (mem2 x_40 x_41 x_34)))) (forall ( (x_42 Int) ) (=> (exists ( (x_43 Int) ) (mem2 x_43 x_42 x_34)) (and (>= x_42 0) (<= x_42 10)))))) (forall ( (x_44 Int) ) (=> (and (>= x_44 0) (<= x_44 10)) (exists ( (x_45 Int) ) (mem2 x_45 x_44 g_rel1_0))))) (forall ( (x_46 Int) (x_47 Int) (x_48 Int) ) (=> (and  (mem2 x_47 x_46 g_rel1_0) (mem2 x_48 x_46 g_rel1_0)) (= x_47 x_48)))))
; Local hypotheses
; Goal
(assert (not (and (and (exists ( (x_49 (P (C Int Int))) ) (and (forall ( (x_50 Int) (x_51 Int) ) (= (mem2 x_51 x_50 x_49) (mem2 x_51 x_50 g_fun1_1))) (forall ( (x_52 Int) (x_53 Int) (x_54 Int) ) (=> (and  (mem2 x_52 x_53 x_49) (mem2 x_52 x_54 x_49)) (= x_53 x_54))) (forall ( (x_55 Int) ) (= (exists ( (x_56 Int) ) (mem2 x_55 x_56 g_fun1_1)) (exists ( (x_57 Int) ) (mem2 x_55 x_57 x_49)))) (forall ( (x_58 Int) ) (=> (exists ( (x_59 Int) ) (mem2 x_59 x_58 x_49)) (exists ( (x_60 Int) ) (mem2 x_60 x_58 g_fun1_1)))))) (forall ( (x_61 Int) ) (=> (exists ( (x_62 Int) ) (mem2 x_62 x_61 g_fun1_1)) (exists ( (x_63 Int) ) (mem2 x_63 x_61 g_fun1_1))))) (forall ( (x_64 Int) (x_65 Int) (x_66 Int) ) (=> (and  (mem2 x_65 x_64 g_fun1_1) (mem2 x_66 x_64 g_fun1_1)) (= x_65 x_66))))))
(check-sat)
(exit)
