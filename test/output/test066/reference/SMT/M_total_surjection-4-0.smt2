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
(assert (and (exists ( (x_148 (P (C Int Int))) ) (and (forall ( (x_149 Int) (x_150 Int) ) (= (mem2 x_150 x_149 x_148) (mem2 x_150 x_149 g_rel1_0))) (forall ( (x_151 Int) (x_152 Int) (x_153 Int) ) (=> (and  (mem2 x_151 x_152 x_148) (mem2 x_151 x_153 x_148)) (= x_152 x_153))) (forall ( (x_154 Int) ) (= (and (>= x_154 0) (<= x_154 7)) (exists ( (x_155 Int) ) (mem2 x_154 x_155 x_148)))) (forall ( (x_156 Int) ) (=> (exists ( (x_157 Int) ) (mem2 x_157 x_156 x_148)) (and (>= x_156 0) (<= x_156 10)))))) (forall ( (x_158 Int) ) (=> (and (>= x_158 0) (<= x_158 10)) (exists ( (x_159 Int) ) (mem2 x_159 x_158 g_rel1_0))))))
(assert (and (exists ( (x_160 (P (C Int Int))) ) (and (forall ( (x_161 Int) (x_162 Int) ) (= (mem2 x_162 x_161 x_160) (mem2 x_162 x_161 g_fun1_1))) (forall ( (x_163 Int) (x_164 Int) (x_165 Int) ) (=> (and  (mem2 x_163 x_164 x_160) (mem2 x_163 x_165 x_160)) (= x_164 x_165))) (forall ( (x_166 Int) ) (= (exists ( (x_167 Int) ) (mem2 x_166 x_167 g_fun1_1)) (exists ( (x_168 Int) ) (mem2 x_166 x_168 x_160)))) (forall ( (x_169 Int) ) (=> (exists ( (x_170 Int) ) (mem2 x_170 x_169 x_160)) (exists ( (x_171 Int) ) (mem2 x_171 x_169 g_fun1_1)))))) (forall ( (x_172 Int) ) (=> (exists ( (x_173 Int) ) (mem2 x_173 x_172 g_fun1_1)) (exists ( (x_174 Int) ) (mem2 x_174 x_172 g_fun1_1))))))
(assert (and (exists ( (x_175 (P (C Int Int))) ) (and (forall ( (x_176 Int) (x_177 Int) ) (= (mem2 x_177 x_176 x_175) (mem2 x_177 x_176 g_fun2_2))) (forall ( (x_178 Int) (x_179 Int) (x_180 Int) ) (=> (and  (mem2 x_178 x_179 x_175) (mem2 x_178 x_180 x_175)) (= x_179 x_180))) (forall ( (x_181 Int) ) (= true (exists ( (x_182 Int) ) (mem2 x_181 x_182 x_175)))) (forall ( (x_183 Int) ) (=> (exists ( (x_184 Int) ) (mem2 x_184 x_183 x_175)) true)))) (forall ( (x_185 Int) ) (=> true (exists ( (x_186 Int) ) (mem2 x_186 x_185 g_fun2_2))))))
(assert (and (exists ( (x_187 (P (C Int Int))) ) (and (forall ( (x_188 Int) (x_189 Int) ) (= (mem2 x_189 x_188 x_187) (mem2 x_189 x_188 g_fun3_3))) (forall ( (x_190 Int) (x_191 Int) (x_192 Int) ) (=> (and  (mem2 x_190 x_191 x_187) (mem2 x_190 x_192 x_187)) (= x_191 x_192))) (forall ( (x_193 Int) ) (= true (exists ( (x_194 Int) ) (mem2 x_193 x_194 x_187)))) (forall ( (x_195 Int) ) (=> (exists ( (x_196 Int) ) (mem2 x_196 x_195 x_187)) true)))) (forall ( (x_197 Int) ) (=> true (exists ( (x_198 Int) ) (mem2 x_198 x_197 g_fun3_3))))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_199 (P (C Real Real))) ) (and (forall ( (x_200 Real) (x_201 Real) ) (= (mem3 x_201 x_200 x_199) (mem3 x_201 x_200 g_fun4_4))) (forall ( (x_202 Real) (x_203 Real) (x_204 Real) ) (=> (and  (mem3 x_202 x_203 x_199) (mem3 x_202 x_204 x_199)) (= x_203 x_204))) (forall ( (x_205 Real) ) (= true (exists ( (x_206 Real) ) (mem3 x_205 x_206 x_199)))) (forall ( (x_207 Real) ) (=> (exists ( (x_208 Real) ) (mem3 x_208 x_207 x_199)) true)))) (forall ( (x_209 Real) ) (=> true (exists ( (x_210 Real) ) (mem3 x_210 x_209 g_fun4_4)))))))
(check-sat)
(exit)
