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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int Real (P (C Int Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (or  (= x_4 5) (= x_4 4) (= x_4 1) (= x_4 1) (= x_4 2) (= x_4 3) (= x_4 8)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S2_1) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (and  true (= (mod x_6 2) 0)))))
; Global hypotheses
(assert (exists ( (x_167 Int) ) (and (and (exists ( (x_168 (P (C Int Int))) ) (and (forall ( (x_169 Int) (x_170 Int) ) (= (mem2 x_170 x_169 x_168) (or  (and (= x_170 1) (= x_169 5)) (and (= x_170 2) (= x_169 2)) (and (= x_170 3) (= x_169 0))))) (forall ( (x_171 Int) (x_172 Int) (x_173 Int) ) (=> (and  (mem2 x_171 x_172 x_168) (mem2 x_171 x_173 x_168)) (= x_172 x_173))) (forall ( (x_174 Int) ) (= (and (>= x_174 1) (<= x_174 x_167)) (exists ( (x_175 Int) ) (mem2 x_174 x_175 x_168)))) (forall ( (x_176 Int) ) (=> (exists ( (x_177 Int) ) (mem2 x_177 x_176 x_168)) (mem0 x_176 g_S1_0))))) (forall ( (x_178 Int) ) (=> (mem0 x_178 g_S1_0) (exists ( (x_179 Int) ) (or  (and (= x_179 1) (= x_178 5)) (and (= x_179 2) (= x_178 2)) (and (= x_179 3) (= x_178 0))))))) (forall ( (x_180 Int) (x_181 Int) (x_182 Int) ) (=> (and  (or  (and (= x_181 1) (= x_180 5)) (and (= x_181 2) (= x_180 2)) (and (= x_181 3) (= x_180 0))) (or  (and (= x_182 1) (= x_180 5)) (and (= x_182 2) (= x_180 2)) (and (= x_182 3) (= x_180 0)))) (= x_181 x_182))))))
(assert (exists ( (x_183 Int) ) (and (and (exists ( (x_184 (P (C Int Real))) ) (and (forall ( (x_185 Real) (x_186 Int) ) (= (mem3 x_186 x_185 x_184) (or  (and (= x_186 1) (= x_185 1.2)) (and (= x_186 2) (= x_185 (- 5.3)))))) (forall ( (x_187 Int) (x_188 Real) (x_189 Real) ) (=> (and  (mem3 x_187 x_188 x_184) (mem3 x_187 x_189 x_184)) (= x_188 x_189))) (forall ( (x_190 Int) ) (= (and (>= x_190 1) (<= x_190 x_183)) (exists ( (x_191 Real) ) (mem3 x_190 x_191 x_184)))) (forall ( (x_192 Real) ) (=> (exists ( (x_193 Int) ) (mem3 x_193 x_192 x_184)) true)))) (forall ( (x_194 Real) ) (=> true (exists ( (x_195 Int) ) (or  (and (= x_195 1) (= x_194 1.2)) (and (= x_195 2) (= x_194 (- 5.3)))))))) (forall ( (x_196 Real) (x_197 Int) (x_198 Int) ) (=> (and  (or  (and (= x_197 1) (= x_196 1.2)) (and (= x_197 2) (= x_196 (- 5.3)))) (or  (and (= x_198 1) (= x_196 1.2)) (and (= x_198 2) (= x_196 (- 5.3))))) (= x_197 x_198))))))
(assert (exists ( (x_199 Int) ) (and (and (exists ( (x_200 (P (C Int Int))) ) (and (forall ( (x_201 Int) (x_202 Int) ) (= (mem2 x_202 x_201 x_200) (or  (and (= x_202 1) (= x_201 2)) (and (= x_202 2) (= x_201 3)) (and (= x_202 3) (= x_201 4))))) (forall ( (x_203 Int) (x_204 Int) (x_205 Int) ) (=> (and  (mem2 x_203 x_204 x_200) (mem2 x_203 x_205 x_200)) (= x_204 x_205))) (forall ( (x_206 Int) ) (= (and (>= x_206 1) (<= x_206 x_199)) (exists ( (x_207 Int) ) (mem2 x_206 x_207 x_200)))) (forall ( (x_208 Int) ) (=> (exists ( (x_209 Int) ) (mem2 x_209 x_208 x_200)) (mem0 x_208 g_S2_1))))) (forall ( (x_210 Int) ) (=> (mem0 x_210 g_S2_1) (exists ( (x_211 Int) ) (or  (and (= x_211 1) (= x_210 2)) (and (= x_211 2) (= x_210 3)) (and (= x_211 3) (= x_210 4))))))) (forall ( (x_212 Int) (x_213 Int) (x_214 Int) ) (=> (and  (or  (and (= x_213 1) (= x_212 2)) (and (= x_213 2) (= x_212 3)) (and (= x_213 3) (= x_212 4))) (or  (and (= x_214 1) (= x_212 2)) (and (= x_214 2) (= x_212 3)) (and (= x_214 3) (= x_212 4)))) (= x_213 x_214))))))
(assert (exists ( (x_215 Int) ) (and (and (exists ( (x_216 (P (C Int Int))) ) (and (forall ( (x_217 Int) (x_218 Int) ) (= (mem2 x_218 x_217 x_216) false)) (forall ( (x_219 Int) (x_220 Int) (x_221 Int) ) (=> (and  (mem2 x_219 x_220 x_216) (mem2 x_219 x_221 x_216)) (= x_220 x_221))) (forall ( (x_222 Int) ) (= (and (>= x_222 1) (<= x_222 x_215)) (exists ( (x_223 Int) ) (mem2 x_222 x_223 x_216)))) (forall ( (x_224 Int) ) (=> (exists ( (x_225 Int) ) (mem2 x_225 x_224 x_216)) (mem0 x_224 g_S1_0))))) (forall ( (x_226 Int) ) (=> (mem0 x_226 g_S1_0) (exists ( (x_227 Int) ) false)))) (forall ( (x_228 Int) (x_229 Int) (x_230 Int) ) (=> (and  false false) (= x_229 x_230))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_231 Int) ) (and (and (exists ( (x_232 (P (C Int Real))) ) (and (forall ( (x_233 Real) (x_234 Int) ) (= (mem3 x_234 x_233 x_232) false)) (forall ( (x_235 Int) (x_236 Real) (x_237 Real) ) (=> (and  (mem3 x_235 x_236 x_232) (mem3 x_235 x_237 x_232)) (= x_236 x_237))) (forall ( (x_238 Int) ) (= (and (>= x_238 1) (<= x_238 x_231)) (exists ( (x_239 Real) ) (mem3 x_238 x_239 x_232)))) (forall ( (x_240 Real) ) (=> (exists ( (x_241 Int) ) (mem3 x_241 x_240 x_232)) true)))) (forall ( (x_242 Real) ) (=> true (exists ( (x_243 Int) ) false)))) (forall ( (x_244 Real) (x_245 Int) (x_246 Int) ) (=> (and  false false) (= x_245 x_246)))))))
(check-sat)
(exit)
