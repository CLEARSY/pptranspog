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
(assert (and (and (forall ( (x_71 Int) (x_72 Int) ) (=> (mem2 x_72 x_71 g_rel1_0) (and (and (>= x_72 0) (<= x_72 7)) (and (>= x_71 0) (<= x_71 10))))) (forall ( (x_73 Int) (x_74 Int) (x_75 Int) ) (=> (and  (mem2 x_73 x_74 g_rel1_0) (mem2 x_73 x_75 g_rel1_0)) (= x_74 x_75)))) (forall ( (x_76 Int) (x_77 Int) (x_78 Int) ) (=> (and  (mem2 x_77 x_76 g_rel1_0) (mem2 x_78 x_76 g_rel1_0)) (= x_77 x_78)))))
(assert (and (and (forall ( (x_79 Int) (x_80 Int) ) (=> (mem2 x_80 x_79 g_fun1_1) (and (exists ( (x_81 Int) ) (mem2 x_80 x_81 g_fun1_1)) (exists ( (x_82 Int) ) (mem2 x_82 x_79 g_fun1_1))))) (forall ( (x_83 Int) (x_84 Int) (x_85 Int) ) (=> (and  (mem2 x_83 x_84 g_fun1_1) (mem2 x_83 x_85 g_fun1_1)) (= x_84 x_85)))) (forall ( (x_86 Int) (x_87 Int) (x_88 Int) ) (=> (and  (mem2 x_87 x_86 g_fun1_1) (mem2 x_88 x_86 g_fun1_1)) (= x_87 x_88)))))
(assert (and (and (forall ( (x_89 Int) (x_90 Int) ) (=> (mem2 x_90 x_89 g_fun2_2) (and true true))) (forall ( (x_91 Int) (x_92 Int) (x_93 Int) ) (=> (and  (mem2 x_91 x_92 g_fun2_2) (mem2 x_91 x_93 g_fun2_2)) (= x_92 x_93)))) (forall ( (x_94 Int) (x_95 Int) (x_96 Int) ) (=> (and  (mem2 x_95 x_94 g_fun2_2) (mem2 x_96 x_94 g_fun2_2)) (= x_95 x_96)))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_97 Int) (x_98 Int) ) (=> (mem2 x_98 x_97 g_fun3_3) (and true true))) (forall ( (x_99 Int) (x_100 Int) (x_101 Int) ) (=> (and  (mem2 x_99 x_100 g_fun3_3) (mem2 x_99 x_101 g_fun3_3)) (= x_100 x_101)))) (forall ( (x_102 Int) (x_103 Int) (x_104 Int) ) (=> (and  (mem2 x_103 x_102 g_fun3_3) (mem2 x_104 x_102 g_fun3_3)) (= x_103 x_104))))))
(check-sat)
(exit)
