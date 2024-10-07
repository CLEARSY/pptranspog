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
(assert (and (exists ( (x_101 (P (C Int Int))) ) (and (forall ( (x_102 Int) (x_103 Int) ) (= (mem2 x_103 x_102 x_101) (mem2 x_103 x_102 g_rel1_0))) (forall ( (x_104 Int) (x_105 Int) (x_106 Int) ) (=> (and  (mem2 x_104 x_105 x_101) (mem2 x_104 x_106 x_101)) (= x_105 x_106))) (forall ( (x_107 Int) ) (= (and (>= x_107 0) (<= x_107 7)) (exists ( (x_108 Int) ) (mem2 x_107 x_108 x_101)))) (forall ( (x_109 Int) ) (=> (exists ( (x_110 Int) ) (mem2 x_110 x_109 x_101)) (and (>= x_109 0) (<= x_109 10)))))) (forall ( (x_111 Int) (x_112 Int) (x_113 Int) ) (=> (and  (mem2 x_112 x_111 g_rel1_0) (mem2 x_113 x_111 g_rel1_0)) (= x_112 x_113)))))
(assert (and (exists ( (x_114 (P (C Int Int))) ) (and (forall ( (x_115 Int) (x_116 Int) ) (= (mem2 x_116 x_115 x_114) (mem2 x_116 x_115 g_fun1_1))) (forall ( (x_117 Int) (x_118 Int) (x_119 Int) ) (=> (and  (mem2 x_117 x_118 x_114) (mem2 x_117 x_119 x_114)) (= x_118 x_119))) (forall ( (x_120 Int) ) (= (exists ( (x_121 Int) ) (mem2 x_120 x_121 g_fun1_1)) (exists ( (x_122 Int) ) (mem2 x_120 x_122 x_114)))) (forall ( (x_123 Int) ) (=> (exists ( (x_124 Int) ) (mem2 x_124 x_123 x_114)) (exists ( (x_125 Int) ) (mem2 x_125 x_123 g_fun1_1)))))) (forall ( (x_126 Int) (x_127 Int) (x_128 Int) ) (=> (and  (mem2 x_127 x_126 g_fun1_1) (mem2 x_128 x_126 g_fun1_1)) (= x_127 x_128)))))
(assert (and (exists ( (x_129 (P (C Int Int))) ) (and (forall ( (x_130 Int) (x_131 Int) ) (= (mem2 x_131 x_130 x_129) (mem2 x_131 x_130 g_fun2_2))) (forall ( (x_132 Int) (x_133 Int) (x_134 Int) ) (=> (and  (mem2 x_132 x_133 x_129) (mem2 x_132 x_134 x_129)) (= x_133 x_134))) (forall ( (x_135 Int) ) (= true (exists ( (x_136 Int) ) (mem2 x_135 x_136 x_129)))) (forall ( (x_137 Int) ) (=> (exists ( (x_138 Int) ) (mem2 x_138 x_137 x_129)) true)))) (forall ( (x_139 Int) (x_140 Int) (x_141 Int) ) (=> (and  (mem2 x_140 x_139 g_fun2_2) (mem2 x_141 x_139 g_fun2_2)) (= x_140 x_141)))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_142 (P (C Int Int))) ) (and (forall ( (x_143 Int) (x_144 Int) ) (= (mem2 x_144 x_143 x_142) (mem2 x_144 x_143 g_fun3_3))) (forall ( (x_145 Int) (x_146 Int) (x_147 Int) ) (=> (and  (mem2 x_145 x_146 x_142) (mem2 x_145 x_147 x_142)) (= x_146 x_147))) (forall ( (x_148 Int) ) (= true (exists ( (x_149 Int) ) (mem2 x_148 x_149 x_142)))) (forall ( (x_150 Int) ) (=> (exists ( (x_151 Int) ) (mem2 x_151 x_150 x_142)) true)))) (forall ( (x_152 Int) (x_153 Int) (x_154 Int) ) (=> (and  (mem2 x_153 x_152 g_fun3_3) (mem2 x_154 x_152 g_fun3_3)) (= x_153 x_154))))))
(check-sat)
(exit)
