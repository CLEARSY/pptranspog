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
(assert (and (and (forall ( (x_98 Int) (x_99 Int) ) (=> (mem2 x_99 x_98 g_rel1_0) (and (and (>= x_99 0) (<= x_99 7)) (and (>= x_98 0) (<= x_98 10))))) (forall ( (x_100 Int) (x_101 Int) (x_102 Int) ) (=> (and  (mem2 x_100 x_101 g_rel1_0) (mem2 x_100 x_102 g_rel1_0)) (= x_101 x_102)))) (forall ( (x_103 Int) ) (=> (and (>= x_103 0) (<= x_103 10)) (exists ( (x_104 Int) ) (mem2 x_104 x_103 g_rel1_0))))))
(assert (and (and (forall ( (x_105 Int) (x_106 Int) ) (=> (mem2 x_106 x_105 g_fun1_1) (and (exists ( (x_107 Int) ) (mem2 x_106 x_107 g_fun1_1)) (exists ( (x_108 Int) ) (mem2 x_108 x_105 g_fun1_1))))) (forall ( (x_109 Int) (x_110 Int) (x_111 Int) ) (=> (and  (mem2 x_109 x_110 g_fun1_1) (mem2 x_109 x_111 g_fun1_1)) (= x_110 x_111)))) (forall ( (x_112 Int) ) (=> (exists ( (x_113 Int) ) (mem2 x_113 x_112 g_fun1_1)) (exists ( (x_114 Int) ) (mem2 x_114 x_112 g_fun1_1))))))
(assert (and (and (forall ( (x_115 Int) (x_116 Int) ) (=> (mem2 x_116 x_115 g_fun2_2) (and true true))) (forall ( (x_117 Int) (x_118 Int) (x_119 Int) ) (=> (and  (mem2 x_117 x_118 g_fun2_2) (mem2 x_117 x_119 g_fun2_2)) (= x_118 x_119)))) (forall ( (x_120 Int) ) (=> true (exists ( (x_121 Int) ) (mem2 x_121 x_120 g_fun2_2))))))
(assert (and (and (forall ( (x_122 Int) (x_123 Int) ) (=> (mem2 x_123 x_122 g_fun3_3) (and true true))) (forall ( (x_124 Int) (x_125 Int) (x_126 Int) ) (=> (and  (mem2 x_124 x_125 g_fun3_3) (mem2 x_124 x_126 g_fun3_3)) (= x_125 x_126)))) (forall ( (x_127 Int) ) (=> true (exists ( (x_128 Int) ) (mem2 x_128 x_127 g_fun3_3))))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_129 Real) (x_130 Real) ) (=> (mem3 x_130 x_129 g_fun4_4) (and true true))) (forall ( (x_131 Real) (x_132 Real) (x_133 Real) ) (=> (and  (mem3 x_131 x_132 g_fun4_4) (mem3 x_131 x_133 g_fun4_4)) (= x_132 x_133)))) (forall ( (x_134 Real) ) (=> true (exists ( (x_135 Real) ) (mem3 x_135 x_134 g_fun4_4)))))))
(check-sat)
(exit)
