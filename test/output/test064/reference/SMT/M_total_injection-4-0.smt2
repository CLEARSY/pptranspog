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
(assert (and (exists ( (x_155 (P (C Int Int))) ) (and (forall ( (x_156 Int) (x_157 Int) ) (= (mem2 x_157 x_156 x_155) (mem2 x_157 x_156 g_rel1_0))) (forall ( (x_158 Int) (x_159 Int) (x_160 Int) ) (=> (and  (mem2 x_158 x_159 x_155) (mem2 x_158 x_160 x_155)) (= x_159 x_160))) (forall ( (x_161 Int) ) (= (and (>= x_161 0) (<= x_161 7)) (exists ( (x_162 Int) ) (mem2 x_161 x_162 x_155)))) (forall ( (x_163 Int) ) (=> (exists ( (x_164 Int) ) (mem2 x_164 x_163 x_155)) (and (>= x_163 0) (<= x_163 10)))))) (forall ( (x_165 Int) (x_166 Int) (x_167 Int) ) (=> (and  (mem2 x_166 x_165 g_rel1_0) (mem2 x_167 x_165 g_rel1_0)) (= x_166 x_167)))))
(assert (and (exists ( (x_168 (P (C Int Int))) ) (and (forall ( (x_169 Int) (x_170 Int) ) (= (mem2 x_170 x_169 x_168) (mem2 x_170 x_169 g_fun1_1))) (forall ( (x_171 Int) (x_172 Int) (x_173 Int) ) (=> (and  (mem2 x_171 x_172 x_168) (mem2 x_171 x_173 x_168)) (= x_172 x_173))) (forall ( (x_174 Int) ) (= (exists ( (x_175 Int) ) (mem2 x_174 x_175 g_fun1_1)) (exists ( (x_176 Int) ) (mem2 x_174 x_176 x_168)))) (forall ( (x_177 Int) ) (=> (exists ( (x_178 Int) ) (mem2 x_178 x_177 x_168)) (exists ( (x_179 Int) ) (mem2 x_179 x_177 g_fun1_1)))))) (forall ( (x_180 Int) (x_181 Int) (x_182 Int) ) (=> (and  (mem2 x_181 x_180 g_fun1_1) (mem2 x_182 x_180 g_fun1_1)) (= x_181 x_182)))))
(assert (and (exists ( (x_183 (P (C Int Int))) ) (and (forall ( (x_184 Int) (x_185 Int) ) (= (mem2 x_185 x_184 x_183) (mem2 x_185 x_184 g_fun2_2))) (forall ( (x_186 Int) (x_187 Int) (x_188 Int) ) (=> (and  (mem2 x_186 x_187 x_183) (mem2 x_186 x_188 x_183)) (= x_187 x_188))) (forall ( (x_189 Int) ) (= true (exists ( (x_190 Int) ) (mem2 x_189 x_190 x_183)))) (forall ( (x_191 Int) ) (=> (exists ( (x_192 Int) ) (mem2 x_192 x_191 x_183)) true)))) (forall ( (x_193 Int) (x_194 Int) (x_195 Int) ) (=> (and  (mem2 x_194 x_193 g_fun2_2) (mem2 x_195 x_193 g_fun2_2)) (= x_194 x_195)))))
(assert (and (exists ( (x_196 (P (C Int Int))) ) (and (forall ( (x_197 Int) (x_198 Int) ) (= (mem2 x_198 x_197 x_196) (mem2 x_198 x_197 g_fun3_3))) (forall ( (x_199 Int) (x_200 Int) (x_201 Int) ) (=> (and  (mem2 x_199 x_200 x_196) (mem2 x_199 x_201 x_196)) (= x_200 x_201))) (forall ( (x_202 Int) ) (= true (exists ( (x_203 Int) ) (mem2 x_202 x_203 x_196)))) (forall ( (x_204 Int) ) (=> (exists ( (x_205 Int) ) (mem2 x_205 x_204 x_196)) true)))) (forall ( (x_206 Int) (x_207 Int) (x_208 Int) ) (=> (and  (mem2 x_207 x_206 g_fun3_3) (mem2 x_208 x_206 g_fun3_3)) (= x_207 x_208)))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_209 (P (C Real Real))) ) (and (forall ( (x_210 Real) (x_211 Real) ) (= (mem3 x_211 x_210 x_209) (mem3 x_211 x_210 g_fun4_4))) (forall ( (x_212 Real) (x_213 Real) (x_214 Real) ) (=> (and  (mem3 x_212 x_213 x_209) (mem3 x_212 x_214 x_209)) (= x_213 x_214))) (forall ( (x_215 Real) ) (= true (exists ( (x_216 Real) ) (mem3 x_215 x_216 x_209)))) (forall ( (x_217 Real) ) (=> (exists ( (x_218 Real) ) (mem3 x_218 x_217 x_209)) true)))) (forall ( (x_219 Real) (x_220 Real) (x_221 Real) ) (=> (and  (mem3 x_220 x_219 g_fun4_4) (mem3 x_221 x_219 g_fun4_4)) (= x_220 x_221))))))
(check-sat)
(exit)
