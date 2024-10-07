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
(assert (and (and (exists ( (x_178 (P (C Int Int))) ) (and (forall ( (x_179 Int) (x_180 Int) ) (= (mem2 x_180 x_179 x_178) (mem2 x_180 x_179 g_rel1_0))) (forall ( (x_181 Int) (x_182 Int) (x_183 Int) ) (=> (and  (mem2 x_181 x_182 x_178) (mem2 x_181 x_183 x_178)) (= x_182 x_183))) (forall ( (x_184 Int) ) (= (and (>= x_184 0) (<= x_184 7)) (exists ( (x_185 Int) ) (mem2 x_184 x_185 x_178)))) (forall ( (x_186 Int) ) (=> (exists ( (x_187 Int) ) (mem2 x_187 x_186 x_178)) (and (>= x_186 0) (<= x_186 10)))))) (forall ( (x_188 Int) ) (=> (and (>= x_188 0) (<= x_188 10)) (exists ( (x_189 Int) ) (mem2 x_189 x_188 g_rel1_0))))) (forall ( (x_190 Int) (x_191 Int) (x_192 Int) ) (=> (and  (mem2 x_191 x_190 g_rel1_0) (mem2 x_192 x_190 g_rel1_0)) (= x_191 x_192)))))
(assert (and (and (exists ( (x_193 (P (C Int Int))) ) (and (forall ( (x_194 Int) (x_195 Int) ) (= (mem2 x_195 x_194 x_193) (mem2 x_195 x_194 g_fun1_1))) (forall ( (x_196 Int) (x_197 Int) (x_198 Int) ) (=> (and  (mem2 x_196 x_197 x_193) (mem2 x_196 x_198 x_193)) (= x_197 x_198))) (forall ( (x_199 Int) ) (= (exists ( (x_200 Int) ) (mem2 x_199 x_200 g_fun1_1)) (exists ( (x_201 Int) ) (mem2 x_199 x_201 x_193)))) (forall ( (x_202 Int) ) (=> (exists ( (x_203 Int) ) (mem2 x_203 x_202 x_193)) (exists ( (x_204 Int) ) (mem2 x_204 x_202 g_fun1_1)))))) (forall ( (x_205 Int) ) (=> (exists ( (x_206 Int) ) (mem2 x_206 x_205 g_fun1_1)) (exists ( (x_207 Int) ) (mem2 x_207 x_205 g_fun1_1))))) (forall ( (x_208 Int) (x_209 Int) (x_210 Int) ) (=> (and  (mem2 x_209 x_208 g_fun1_1) (mem2 x_210 x_208 g_fun1_1)) (= x_209 x_210)))))
(assert (and (and (exists ( (x_211 (P (C Int Int))) ) (and (forall ( (x_212 Int) (x_213 Int) ) (= (mem2 x_213 x_212 x_211) (mem2 x_213 x_212 g_fun2_2))) (forall ( (x_214 Int) (x_215 Int) (x_216 Int) ) (=> (and  (mem2 x_214 x_215 x_211) (mem2 x_214 x_216 x_211)) (= x_215 x_216))) (forall ( (x_217 Int) ) (= true (exists ( (x_218 Int) ) (mem2 x_217 x_218 x_211)))) (forall ( (x_219 Int) ) (=> (exists ( (x_220 Int) ) (mem2 x_220 x_219 x_211)) true)))) (forall ( (x_221 Int) ) (=> true (exists ( (x_222 Int) ) (mem2 x_222 x_221 g_fun2_2))))) (forall ( (x_223 Int) (x_224 Int) (x_225 Int) ) (=> (and  (mem2 x_224 x_223 g_fun2_2) (mem2 x_225 x_223 g_fun2_2)) (= x_224 x_225)))))
(assert (and (and (exists ( (x_226 (P (C Int Int))) ) (and (forall ( (x_227 Int) (x_228 Int) ) (= (mem2 x_228 x_227 x_226) (mem2 x_228 x_227 g_fun3_3))) (forall ( (x_229 Int) (x_230 Int) (x_231 Int) ) (=> (and  (mem2 x_229 x_230 x_226) (mem2 x_229 x_231 x_226)) (= x_230 x_231))) (forall ( (x_232 Int) ) (= true (exists ( (x_233 Int) ) (mem2 x_232 x_233 x_226)))) (forall ( (x_234 Int) ) (=> (exists ( (x_235 Int) ) (mem2 x_235 x_234 x_226)) true)))) (forall ( (x_236 Int) ) (=> true (exists ( (x_237 Int) ) (mem2 x_237 x_236 g_fun3_3))))) (forall ( (x_238 Int) (x_239 Int) (x_240 Int) ) (=> (and  (mem2 x_239 x_238 g_fun3_3) (mem2 x_240 x_238 g_fun3_3)) (= x_239 x_240)))))
; Local hypotheses
; Goal
(assert (not (and (and (exists ( (x_241 (P (C Real Real))) ) (and (forall ( (x_242 Real) (x_243 Real) ) (= (mem3 x_243 x_242 x_241) (mem3 x_243 x_242 g_fun4_4))) (forall ( (x_244 Real) (x_245 Real) (x_246 Real) ) (=> (and  (mem3 x_244 x_245 x_241) (mem3 x_244 x_246 x_241)) (= x_245 x_246))) (forall ( (x_247 Real) ) (= true (exists ( (x_248 Real) ) (mem3 x_247 x_248 x_241)))) (forall ( (x_249 Real) ) (=> (exists ( (x_250 Real) ) (mem3 x_250 x_249 x_241)) true)))) (forall ( (x_251 Real) ) (=> true (exists ( (x_252 Real) ) (mem3 x_252 x_251 g_fun4_4))))) (forall ( (x_253 Real) (x_254 Real) (x_255 Real) ) (=> (and  (mem3 x_254 x_253 g_fun4_4) (mem3 x_255 x_253 g_fun4_4)) (= x_254 x_255))))))
(check-sat)
(exit)
