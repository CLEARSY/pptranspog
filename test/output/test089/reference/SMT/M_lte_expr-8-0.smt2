(set-option :print-success false)
(set-logic ALL)
; PO 8 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)

(declare-fun isum ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (isum s) 0)
  )
 )
 :named |isum_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (isum T) (+ (isum S) x) )))))
  :named |isum_axiom_2|))


(declare-fun iprod ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (iprod s) 1)
  )
 )
 :named |iprod_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (iprod T) (* (iprod S) x) )))))
  :named |iprod_axiom_2|))

; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
(declare-fun g_empty_seq_8 () (P (C Int Int)))
(declare-fun g_fun1_4 () (P (C Int Int)))
(declare-fun g_fun2_5 () (P (C Int Int)))
(declare-fun g_fun3_6 () (P (C Int Int)))
(declare-fun g_rel1_3 () (P (C Int Int)))
(declare-fun g_ss_7 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_rel1_3) (or  (and (= x_10 2) (= x_9 7)) (and (= x_10 5) (= x_9 9)) (and (= x_10 2) (= x_9 6)) (and (= x_10 7) (= x_9 9)) (and (= x_10 5) (= x_9 3))))))
(assert (and (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_fun1_4) (and true true))) (forall ( (x_13 Int) (x_14 Int) (x_15 Int) ) (=> (and  (mem2 x_13 x_14 g_fun1_4) (mem2 x_13 x_15 g_fun1_4)) (= x_14 x_15)))))
(assert (forall ( (x_16 Int) ) (= (exists ( (x_17 Int) ) (mem2 x_16 x_17 g_fun1_4)) (and (>= x_16 0) (<= x_16 2)))))
(assert (forall ( (x_18 Int) ) (= (exists ( (x_19 Int) ) (mem2 x_19 x_18 g_fun1_4)) (and (>= x_18 1) (<= x_18 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_20 Int) ) (mem2 l_xx x_20 g_fun1_4)) (forall ((x_21 Int) ) (=> (= x_21 (+ l_xx 1)) (mem2 l_xx x_21 g_fun1_4))))))
(assert (forall ( (x_22 Int) (x_23 Int) ) (= (mem2 x_23 x_22 g_fun2_5) (and  (and (>= x_23 0) (<= x_23 2)) (= x_22 (+ x_23 1))))))
(assert (forall ( (x_24 Int) (x_25 Int) ) (= (mem2 x_25 x_24 g_fun3_6) (and  (and (>= x_25 0) (<= x_25 2)) (= x_24 (+ x_25 1))))))
(assert (exists ( (x_26 Int) ) (exists ( (x_27 (P (C Int Int))) ) (and (forall ( (x_28 Int) (x_29 Int) ) (= (mem2 x_29 x_28 x_27) (mem2 x_29 x_28 g_ss_7))) (forall ( (x_30 Int) (x_31 Int) (x_32 Int) ) (=> (and  (mem2 x_30 x_31 x_27) (mem2 x_30 x_32 x_27)) (= x_31 x_32))) (forall ( (x_33 Int) ) (= (and (>= x_33 1) (<= x_33 x_26)) (exists ( (x_34 Int) ) (mem2 x_33 x_34 x_27)))) (forall ( (x_35 Int) ) (=> (exists ( (x_36 Int) ) (mem2 x_36 x_35 x_27)) true))))))
(assert (forall ( (x_37 Int) (x_38 Int) ) (= (mem2 x_38 x_37 g_ss_7) (or  (and (= x_38 1) (= x_37 7)) (and (= x_38 2) (= x_37 18)) (and (= x_38 3) (= x_37 18)) (and (= x_38 4) (= x_37 21))))))
(assert (exists ( (x_39 Int) ) (exists ( (x_40 (P (C Int Int))) ) (and (forall ( (x_41 Int) (x_42 Int) ) (= (mem2 x_42 x_41 x_40) (mem2 x_42 x_41 g_empty_seq_8))) (forall ( (x_43 Int) (x_44 Int) (x_45 Int) ) (=> (and  (mem2 x_43 x_44 x_40) (mem2 x_43 x_45 x_40)) (= x_44 x_45))) (forall ( (x_46 Int) ) (= (and (>= x_46 1) (<= x_46 x_39)) (exists ( (x_47 Int) ) (mem2 x_46 x_47 x_40)))) (forall ( (x_48 Int) ) (=> (exists ( (x_49 Int) ) (mem2 x_49 x_48 x_40)) true))))))
(assert (forall ( (x_50 Int) (x_51 Int) ) (= (mem2 x_51 x_50 g_empty_seq_8) false)))
; Global hypotheses
(assert (forall ((x_202 (P Int)) ) (=> (forall ( (x_203 Int) ) (= (mem0 x_203 x_202) (exists ( (x_204 Int) ) (and  (mem0 x_204 g_S1_0) (= x_203 x_204))))) (<= (isum x_202) 0))))
(assert (forall ((x_205 (P Int)) ) (=> (forall ( (x_206 Int) ) (= (mem0 x_206 x_205) (exists ( (x_207 Int) ) (and  (mem0 x_207 g_S2_1) (= x_206 x_207))))) (<= (isum x_205) 1))))
(assert (forall ((x_208 (P Int)) ) (=> (forall ( (x_209 Int) ) (= (mem0 x_209 x_208) (exists ( (x_210 Int) ) (and  (mem0 x_210 g_S3_2) (= x_209 x_210))))) (<= (isum x_208) 6))))
(assert (forall ((x_211 (P Int)) ) (=> (forall ( (x_212 Int) ) (= (mem0 x_212 x_211) (exists ( (x_213 Int) ) (and  (mem0 x_213 g_S1_0) (= x_212 x_213))))) (<= (iprod x_211) 1))))
(assert (forall ((x_214 (P Int)) ) (=> (forall ( (x_215 Int) ) (= (mem0 x_215 x_214) (exists ( (x_216 Int) ) (and  (mem0 x_216 g_S2_1) (= x_215 x_216))))) (<= (iprod x_214) 1))))
(assert (forall ((x_217 (P Int)) ) (=> (forall ( (x_218 Int) ) (= (mem0 x_218 x_217) (exists ( (x_219 Int) ) (and  (mem0 x_219 g_S3_2) (= x_218 x_219))))) (<= (iprod x_217) 6))))
(assert (forall ((x_220 Int) ) (=> (exists ( (x_221 (P (C Int Int))) ) (and (and (exists ( (x_222 (P (C Int Int))) ) (and (forall ( (x_223 Int) (x_224 Int) ) (= (mem2 x_224 x_223 x_222) (mem2 x_224 x_223 x_221))) (forall ( (x_225 Int) (x_226 Int) (x_227 Int) ) (=> (and  (mem2 x_225 x_226 x_222) (mem2 x_225 x_227 x_222)) (= x_226 x_227))) (forall ( (x_228 Int) ) (= (mem0 x_228 g_S1_0) (exists ( (x_229 Int) ) (mem2 x_228 x_229 x_222)))) (forall ( (x_230 Int) ) (=> (exists ( (x_231 Int) ) (mem2 x_231 x_230 x_222)) (and (>= x_230 1) (<= x_230 x_220)))))) (forall ( (x_232 Int) ) (=> (and (>= x_232 1) (<= x_232 x_220)) (exists ( (x_233 Int) ) (mem2 x_233 x_232 x_221))))) (forall ( (x_234 Int) (x_235 Int) (x_236 Int) ) (=> (and  (mem2 x_235 x_234 x_221) (mem2 x_236 x_234 x_221)) (= x_235 x_236))))) (<= x_220 0))))
(assert (forall ((x_237 Int) ) (=> (exists ( (x_238 (P (C Int Int))) ) (and (and (exists ( (x_239 (P (C Int Int))) ) (and (forall ( (x_240 Int) (x_241 Int) ) (= (mem2 x_241 x_240 x_239) (mem2 x_241 x_240 x_238))) (forall ( (x_242 Int) (x_243 Int) (x_244 Int) ) (=> (and  (mem2 x_242 x_243 x_239) (mem2 x_242 x_244 x_239)) (= x_243 x_244))) (forall ( (x_245 Int) ) (= (mem0 x_245 g_S2_1) (exists ( (x_246 Int) ) (mem2 x_245 x_246 x_239)))) (forall ( (x_247 Int) ) (=> (exists ( (x_248 Int) ) (mem2 x_248 x_247 x_239)) (and (>= x_247 1) (<= x_247 x_237)))))) (forall ( (x_249 Int) ) (=> (and (>= x_249 1) (<= x_249 x_237)) (exists ( (x_250 Int) ) (mem2 x_250 x_249 x_238))))) (forall ( (x_251 Int) (x_252 Int) (x_253 Int) ) (=> (and  (mem2 x_252 x_251 x_238) (mem2 x_253 x_251 x_238)) (= x_252 x_253))))) (<= x_237 1))))
; Local hypotheses
; Goal
(assert (not (forall ((x_254 Int) ) (=> (exists ( (x_255 (P (C Int Int))) ) (and (and (exists ( (x_256 (P (C Int Int))) ) (and (forall ( (x_257 Int) (x_258 Int) ) (= (mem2 x_258 x_257 x_256) (mem2 x_258 x_257 x_255))) (forall ( (x_259 Int) (x_260 Int) (x_261 Int) ) (=> (and  (mem2 x_259 x_260 x_256) (mem2 x_259 x_261 x_256)) (= x_260 x_261))) (forall ( (x_262 Int) ) (= (mem0 x_262 g_S3_2) (exists ( (x_263 Int) ) (mem2 x_262 x_263 x_256)))) (forall ( (x_264 Int) ) (=> (exists ( (x_265 Int) ) (mem2 x_265 x_264 x_256)) (and (>= x_264 1) (<= x_264 x_254)))))) (forall ( (x_266 Int) ) (=> (and (>= x_266 1) (<= x_266 x_254)) (exists ( (x_267 Int) ) (mem2 x_267 x_266 x_255))))) (forall ( (x_268 Int) (x_269 Int) (x_270 Int) ) (=> (and  (mem2 x_269 x_268 x_255) (mem2 x_270 x_268 x_255)) (= x_269 x_270))))) (<= x_254 3)))))
(check-sat)
(exit)
