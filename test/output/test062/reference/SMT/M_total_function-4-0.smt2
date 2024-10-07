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
(assert (exists ( (x_125 (P (C Int Int))) ) (and (forall ( (x_126 Int) (x_127 Int) ) (= (mem2 x_127 x_126 x_125) (mem2 x_127 x_126 g_rel1_0))) (forall ( (x_128 Int) (x_129 Int) (x_130 Int) ) (=> (and  (mem2 x_128 x_129 x_125) (mem2 x_128 x_130 x_125)) (= x_129 x_130))) (forall ( (x_131 Int) ) (= (and (>= x_131 0) (<= x_131 7)) (exists ( (x_132 Int) ) (mem2 x_131 x_132 x_125)))) (forall ( (x_133 Int) ) (=> (exists ( (x_134 Int) ) (mem2 x_134 x_133 x_125)) (and (>= x_133 0) (<= x_133 10)))))))
(assert (exists ( (x_135 (P (C Int Int))) ) (and (forall ( (x_136 Int) (x_137 Int) ) (= (mem2 x_137 x_136 x_135) (mem2 x_137 x_136 g_fun1_1))) (forall ( (x_138 Int) (x_139 Int) (x_140 Int) ) (=> (and  (mem2 x_138 x_139 x_135) (mem2 x_138 x_140 x_135)) (= x_139 x_140))) (forall ( (x_141 Int) ) (= (exists ( (x_142 Int) ) (mem2 x_141 x_142 g_fun1_1)) (exists ( (x_143 Int) ) (mem2 x_141 x_143 x_135)))) (forall ( (x_144 Int) ) (=> (exists ( (x_145 Int) ) (mem2 x_145 x_144 x_135)) (exists ( (x_146 Int) ) (mem2 x_146 x_144 g_fun1_1)))))))
(assert (exists ( (x_147 (P (C Int Int))) ) (and (forall ( (x_148 Int) (x_149 Int) ) (= (mem2 x_149 x_148 x_147) (mem2 x_149 x_148 g_fun2_2))) (forall ( (x_150 Int) (x_151 Int) (x_152 Int) ) (=> (and  (mem2 x_150 x_151 x_147) (mem2 x_150 x_152 x_147)) (= x_151 x_152))) (forall ( (x_153 Int) ) (= true (exists ( (x_154 Int) ) (mem2 x_153 x_154 x_147)))) (forall ( (x_155 Int) ) (=> (exists ( (x_156 Int) ) (mem2 x_156 x_155 x_147)) true)))))
(assert (exists ( (x_157 (P (C Int Int))) ) (and (forall ( (x_158 Int) (x_159 Int) ) (= (mem2 x_159 x_158 x_157) (mem2 x_159 x_158 g_fun3_3))) (forall ( (x_160 Int) (x_161 Int) (x_162 Int) ) (=> (and  (mem2 x_160 x_161 x_157) (mem2 x_160 x_162 x_157)) (= x_161 x_162))) (forall ( (x_163 Int) ) (= true (exists ( (x_164 Int) ) (mem2 x_163 x_164 x_157)))) (forall ( (x_165 Int) ) (=> (exists ( (x_166 Int) ) (mem2 x_166 x_165 x_157)) true)))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_167 (P (C Real Real))) ) (and (forall ( (x_168 Real) (x_169 Real) ) (= (mem3 x_169 x_168 x_167) (mem3 x_169 x_168 g_fun4_4))) (forall ( (x_170 Real) (x_171 Real) (x_172 Real) ) (=> (and  (mem3 x_170 x_171 x_167) (mem3 x_170 x_172 x_167)) (= x_171 x_172))) (forall ( (x_173 Real) ) (= true (exists ( (x_174 Real) ) (mem3 x_173 x_174 x_167)))) (forall ( (x_175 Real) ) (=> (exists ( (x_176 Real) ) (mem3 x_176 x_175 x_167)) true))))))
(check-sat)
(exit)
