(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (and (forall ( (x_53 Int) (x_54 Int) ) (=> (mem2 x_54 x_53 g_rel1_0) (and (and (>= x_54 0) (<= x_54 7)) (and (>= x_53 0) (<= x_53 10))))) (forall ( (x_55 Int) (x_56 Int) (x_57 Int) ) (=> (and  (mem2 x_55 x_56 g_rel1_0) (mem2 x_55 x_57 g_rel1_0)) (= x_56 x_57)))))
(assert (and (forall ( (x_58 Int) (x_59 Int) ) (=> (mem2 x_59 x_58 g_fun1_1) (and (exists ( (x_60 Int) ) (mem2 x_59 x_60 g_fun1_1)) (exists ( (x_61 Int) ) (mem2 x_61 x_58 g_fun1_1))))) (forall ( (x_62 Int) (x_63 Int) (x_64 Int) ) (=> (and  (mem2 x_62 x_63 g_fun1_1) (mem2 x_62 x_64 g_fun1_1)) (= x_63 x_64)))))
(assert (and (forall ( (x_65 Int) (x_66 Int) ) (=> (mem2 x_66 x_65 g_fun2_2) (and true true))) (forall ( (x_67 Int) (x_68 Int) (x_69 Int) ) (=> (and  (mem2 x_67 x_68 g_fun2_2) (mem2 x_67 x_69 g_fun2_2)) (= x_68 x_69)))))
; Local hypotheses
; Goal
(assert (not (and (forall ( (x_70 Int) (x_71 Int) ) (=> (mem2 x_71 x_70 g_fun3_3) (and true true))) (forall ( (x_72 Int) (x_73 Int) (x_74 Int) ) (=> (and  (mem2 x_72 x_73 g_fun3_3) (mem2 x_72 x_74 g_fun3_3)) (= x_73 x_74))))))
(check-sat)
(exit)
