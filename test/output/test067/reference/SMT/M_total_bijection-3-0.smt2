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
(assert (and (and (exists ( (x_115 (P (C Int Int))) ) (and (forall ( (x_116 Int) (x_117 Int) ) (= (mem2 x_117 x_116 x_115) (mem2 x_117 x_116 g_rel1_0))) (forall ( (x_118 Int) (x_119 Int) (x_120 Int) ) (=> (and  (mem2 x_118 x_119 x_115) (mem2 x_118 x_120 x_115)) (= x_119 x_120))) (forall ( (x_121 Int) ) (= (and (>= x_121 0) (<= x_121 7)) (exists ( (x_122 Int) ) (mem2 x_121 x_122 x_115)))) (forall ( (x_123 Int) ) (=> (exists ( (x_124 Int) ) (mem2 x_124 x_123 x_115)) (and (>= x_123 0) (<= x_123 10)))))) (forall ( (x_125 Int) ) (=> (and (>= x_125 0) (<= x_125 10)) (exists ( (x_126 Int) ) (mem2 x_126 x_125 g_rel1_0))))) (forall ( (x_127 Int) (x_128 Int) (x_129 Int) ) (=> (and  (mem2 x_128 x_127 g_rel1_0) (mem2 x_129 x_127 g_rel1_0)) (= x_128 x_129)))))
(assert (and (and (exists ( (x_130 (P (C Int Int))) ) (and (forall ( (x_131 Int) (x_132 Int) ) (= (mem2 x_132 x_131 x_130) (mem2 x_132 x_131 g_fun1_1))) (forall ( (x_133 Int) (x_134 Int) (x_135 Int) ) (=> (and  (mem2 x_133 x_134 x_130) (mem2 x_133 x_135 x_130)) (= x_134 x_135))) (forall ( (x_136 Int) ) (= (exists ( (x_137 Int) ) (mem2 x_136 x_137 g_fun1_1)) (exists ( (x_138 Int) ) (mem2 x_136 x_138 x_130)))) (forall ( (x_139 Int) ) (=> (exists ( (x_140 Int) ) (mem2 x_140 x_139 x_130)) (exists ( (x_141 Int) ) (mem2 x_141 x_139 g_fun1_1)))))) (forall ( (x_142 Int) ) (=> (exists ( (x_143 Int) ) (mem2 x_143 x_142 g_fun1_1)) (exists ( (x_144 Int) ) (mem2 x_144 x_142 g_fun1_1))))) (forall ( (x_145 Int) (x_146 Int) (x_147 Int) ) (=> (and  (mem2 x_146 x_145 g_fun1_1) (mem2 x_147 x_145 g_fun1_1)) (= x_146 x_147)))))
(assert (and (and (exists ( (x_148 (P (C Int Int))) ) (and (forall ( (x_149 Int) (x_150 Int) ) (= (mem2 x_150 x_149 x_148) (mem2 x_150 x_149 g_fun2_2))) (forall ( (x_151 Int) (x_152 Int) (x_153 Int) ) (=> (and  (mem2 x_151 x_152 x_148) (mem2 x_151 x_153 x_148)) (= x_152 x_153))) (forall ( (x_154 Int) ) (= true (exists ( (x_155 Int) ) (mem2 x_154 x_155 x_148)))) (forall ( (x_156 Int) ) (=> (exists ( (x_157 Int) ) (mem2 x_157 x_156 x_148)) true)))) (forall ( (x_158 Int) ) (=> true (exists ( (x_159 Int) ) (mem2 x_159 x_158 g_fun2_2))))) (forall ( (x_160 Int) (x_161 Int) (x_162 Int) ) (=> (and  (mem2 x_161 x_160 g_fun2_2) (mem2 x_162 x_160 g_fun2_2)) (= x_161 x_162)))))
; Local hypotheses
; Goal
(assert (not (and (and (exists ( (x_163 (P (C Int Int))) ) (and (forall ( (x_164 Int) (x_165 Int) ) (= (mem2 x_165 x_164 x_163) (mem2 x_165 x_164 g_fun3_3))) (forall ( (x_166 Int) (x_167 Int) (x_168 Int) ) (=> (and  (mem2 x_166 x_167 x_163) (mem2 x_166 x_168 x_163)) (= x_167 x_168))) (forall ( (x_169 Int) ) (= true (exists ( (x_170 Int) ) (mem2 x_169 x_170 x_163)))) (forall ( (x_171 Int) ) (=> (exists ( (x_172 Int) ) (mem2 x_172 x_171 x_163)) true)))) (forall ( (x_173 Int) ) (=> true (exists ( (x_174 Int) ) (mem2 x_174 x_173 g_fun3_3))))) (forall ( (x_175 Int) (x_176 Int) (x_177 Int) ) (=> (and  (mem2 x_176 x_175 g_fun3_3) (mem2 x_177 x_175 g_fun3_3)) (= x_176 x_177))))))
(check-sat)
(exit)
