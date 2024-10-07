(set-option :print-success false)
(set-logic ALL)
; PO 4 0
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
(assert (and (forall ( (x_75 Int) (x_76 Int) ) (=> (mem2 x_76 x_75 g_rel1_0) (and (and (>= x_76 0) (<= x_76 7)) (and (>= x_75 0) (<= x_75 10))))) (forall ( (x_77 Int) (x_78 Int) (x_79 Int) ) (=> (and  (mem2 x_77 x_78 g_rel1_0) (mem2 x_77 x_79 g_rel1_0)) (= x_78 x_79)))))
(assert (and (forall ( (x_80 Int) (x_81 Int) ) (=> (mem2 x_81 x_80 g_fun1_1) (and (exists ( (x_82 Int) ) (mem2 x_81 x_82 g_fun1_1)) (exists ( (x_83 Int) ) (mem2 x_83 x_80 g_fun1_1))))) (forall ( (x_84 Int) (x_85 Int) (x_86 Int) ) (=> (and  (mem2 x_84 x_85 g_fun1_1) (mem2 x_84 x_86 g_fun1_1)) (= x_85 x_86)))))
(assert (and (forall ( (x_87 Int) (x_88 Int) ) (=> (mem2 x_88 x_87 g_fun2_2) (and true true))) (forall ( (x_89 Int) (x_90 Int) (x_91 Int) ) (=> (and  (mem2 x_89 x_90 g_fun2_2) (mem2 x_89 x_91 g_fun2_2)) (= x_90 x_91)))))
(assert (and (forall ( (x_92 Int) (x_93 Int) ) (=> (mem2 x_93 x_92 g_fun3_3) (and true true))) (forall ( (x_94 Int) (x_95 Int) (x_96 Int) ) (=> (and  (mem2 x_94 x_95 g_fun3_3) (mem2 x_94 x_96 g_fun3_3)) (= x_95 x_96)))))
; Local hypotheses
; Goal
(assert (not (and (forall ( (x_97 Real) (x_98 Real) ) (=> (mem3 x_98 x_97 g_fun4_4) (and true true))) (forall ( (x_99 Real) (x_100 Real) (x_101 Real) ) (=> (and  (mem3 x_99 x_100 g_fun4_4) (mem3 x_99 x_101 g_fun4_4)) (= x_100 x_101))))))
(check-sat)
(exit)
