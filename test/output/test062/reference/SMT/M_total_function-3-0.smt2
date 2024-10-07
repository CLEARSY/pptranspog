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
(assert (exists ( (x_83 (P (C Int Int))) ) (and (forall ( (x_84 Int) (x_85 Int) ) (= (mem2 x_85 x_84 x_83) (mem2 x_85 x_84 g_rel1_0))) (forall ( (x_86 Int) (x_87 Int) (x_88 Int) ) (=> (and  (mem2 x_86 x_87 x_83) (mem2 x_86 x_88 x_83)) (= x_87 x_88))) (forall ( (x_89 Int) ) (= (and (>= x_89 0) (<= x_89 7)) (exists ( (x_90 Int) ) (mem2 x_89 x_90 x_83)))) (forall ( (x_91 Int) ) (=> (exists ( (x_92 Int) ) (mem2 x_92 x_91 x_83)) (and (>= x_91 0) (<= x_91 10)))))))
(assert (exists ( (x_93 (P (C Int Int))) ) (and (forall ( (x_94 Int) (x_95 Int) ) (= (mem2 x_95 x_94 x_93) (mem2 x_95 x_94 g_fun1_1))) (forall ( (x_96 Int) (x_97 Int) (x_98 Int) ) (=> (and  (mem2 x_96 x_97 x_93) (mem2 x_96 x_98 x_93)) (= x_97 x_98))) (forall ( (x_99 Int) ) (= (exists ( (x_100 Int) ) (mem2 x_99 x_100 g_fun1_1)) (exists ( (x_101 Int) ) (mem2 x_99 x_101 x_93)))) (forall ( (x_102 Int) ) (=> (exists ( (x_103 Int) ) (mem2 x_103 x_102 x_93)) (exists ( (x_104 Int) ) (mem2 x_104 x_102 g_fun1_1)))))))
(assert (exists ( (x_105 (P (C Int Int))) ) (and (forall ( (x_106 Int) (x_107 Int) ) (= (mem2 x_107 x_106 x_105) (mem2 x_107 x_106 g_fun2_2))) (forall ( (x_108 Int) (x_109 Int) (x_110 Int) ) (=> (and  (mem2 x_108 x_109 x_105) (mem2 x_108 x_110 x_105)) (= x_109 x_110))) (forall ( (x_111 Int) ) (= true (exists ( (x_112 Int) ) (mem2 x_111 x_112 x_105)))) (forall ( (x_113 Int) ) (=> (exists ( (x_114 Int) ) (mem2 x_114 x_113 x_105)) true)))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_115 (P (C Int Int))) ) (and (forall ( (x_116 Int) (x_117 Int) ) (= (mem2 x_117 x_116 x_115) (mem2 x_117 x_116 g_fun3_3))) (forall ( (x_118 Int) (x_119 Int) (x_120 Int) ) (=> (and  (mem2 x_118 x_119 x_115) (mem2 x_118 x_120 x_115)) (= x_119 x_120))) (forall ( (x_121 Int) ) (= true (exists ( (x_122 Int) ) (mem2 x_121 x_122 x_115)))) (forall ( (x_123 Int) ) (=> (exists ( (x_124 Int) ) (mem2 x_124 x_123 x_115)) true))))))
(check-sat)
(exit)
