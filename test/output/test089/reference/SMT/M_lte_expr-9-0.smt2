(set-option :print-success false)
(set-logic ALL)
; PO 9 0
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
(assert (forall ((x_271 (P Int)) ) (=> (forall ( (x_272 Int) ) (= (mem0 x_272 x_271) (exists ( (x_273 Int) ) (and  (mem0 x_273 g_S1_0) (= x_272 x_273))))) (<= (isum x_271) 0))))
(assert (forall ((x_274 (P Int)) ) (=> (forall ( (x_275 Int) ) (= (mem0 x_275 x_274) (exists ( (x_276 Int) ) (and  (mem0 x_276 g_S2_1) (= x_275 x_276))))) (<= (isum x_274) 1))))
(assert (forall ((x_277 (P Int)) ) (=> (forall ( (x_278 Int) ) (= (mem0 x_278 x_277) (exists ( (x_279 Int) ) (and  (mem0 x_279 g_S3_2) (= x_278 x_279))))) (<= (isum x_277) 6))))
(assert (forall ((x_280 (P Int)) ) (=> (forall ( (x_281 Int) ) (= (mem0 x_281 x_280) (exists ( (x_282 Int) ) (and  (mem0 x_282 g_S1_0) (= x_281 x_282))))) (<= (iprod x_280) 1))))
(assert (forall ((x_283 (P Int)) ) (=> (forall ( (x_284 Int) ) (= (mem0 x_284 x_283) (exists ( (x_285 Int) ) (and  (mem0 x_285 g_S2_1) (= x_284 x_285))))) (<= (iprod x_283) 1))))
(assert (forall ((x_286 (P Int)) ) (=> (forall ( (x_287 Int) ) (= (mem0 x_287 x_286) (exists ( (x_288 Int) ) (and  (mem0 x_288 g_S3_2) (= x_287 x_288))))) (<= (iprod x_286) 6))))
(assert (forall ((x_289 Int) ) (=> (exists ( (x_290 (P (C Int Int))) ) (and (and (exists ( (x_291 (P (C Int Int))) ) (and (forall ( (x_292 Int) (x_293 Int) ) (= (mem2 x_293 x_292 x_291) (mem2 x_293 x_292 x_290))) (forall ( (x_294 Int) (x_295 Int) (x_296 Int) ) (=> (and  (mem2 x_294 x_295 x_291) (mem2 x_294 x_296 x_291)) (= x_295 x_296))) (forall ( (x_297 Int) ) (= (mem0 x_297 g_S1_0) (exists ( (x_298 Int) ) (mem2 x_297 x_298 x_291)))) (forall ( (x_299 Int) ) (=> (exists ( (x_300 Int) ) (mem2 x_300 x_299 x_291)) (and (>= x_299 1) (<= x_299 x_289)))))) (forall ( (x_301 Int) ) (=> (and (>= x_301 1) (<= x_301 x_289)) (exists ( (x_302 Int) ) (mem2 x_302 x_301 x_290))))) (forall ( (x_303 Int) (x_304 Int) (x_305 Int) ) (=> (and  (mem2 x_304 x_303 x_290) (mem2 x_305 x_303 x_290)) (= x_304 x_305))))) (<= x_289 0))))
(assert (forall ((x_306 Int) ) (=> (exists ( (x_307 (P (C Int Int))) ) (and (and (exists ( (x_308 (P (C Int Int))) ) (and (forall ( (x_309 Int) (x_310 Int) ) (= (mem2 x_310 x_309 x_308) (mem2 x_310 x_309 x_307))) (forall ( (x_311 Int) (x_312 Int) (x_313 Int) ) (=> (and  (mem2 x_311 x_312 x_308) (mem2 x_311 x_313 x_308)) (= x_312 x_313))) (forall ( (x_314 Int) ) (= (mem0 x_314 g_S2_1) (exists ( (x_315 Int) ) (mem2 x_314 x_315 x_308)))) (forall ( (x_316 Int) ) (=> (exists ( (x_317 Int) ) (mem2 x_317 x_316 x_308)) (and (>= x_316 1) (<= x_316 x_306)))))) (forall ( (x_318 Int) ) (=> (and (>= x_318 1) (<= x_318 x_306)) (exists ( (x_319 Int) ) (mem2 x_319 x_318 x_307))))) (forall ( (x_320 Int) (x_321 Int) (x_322 Int) ) (=> (and  (mem2 x_321 x_320 x_307) (mem2 x_322 x_320 x_307)) (= x_321 x_322))))) (<= x_306 1))))
(assert (forall ((x_323 Int) ) (=> (exists ( (x_324 (P (C Int Int))) ) (and (and (exists ( (x_325 (P (C Int Int))) ) (and (forall ( (x_326 Int) (x_327 Int) ) (= (mem2 x_327 x_326 x_325) (mem2 x_327 x_326 x_324))) (forall ( (x_328 Int) (x_329 Int) (x_330 Int) ) (=> (and  (mem2 x_328 x_329 x_325) (mem2 x_328 x_330 x_325)) (= x_329 x_330))) (forall ( (x_331 Int) ) (= (mem0 x_331 g_S3_2) (exists ( (x_332 Int) ) (mem2 x_331 x_332 x_325)))) (forall ( (x_333 Int) ) (=> (exists ( (x_334 Int) ) (mem2 x_334 x_333 x_325)) (and (>= x_333 1) (<= x_333 x_323)))))) (forall ( (x_335 Int) ) (=> (and (>= x_335 1) (<= x_335 x_323)) (exists ( (x_336 Int) ) (mem2 x_336 x_335 x_324))))) (forall ( (x_337 Int) (x_338 Int) (x_339 Int) ) (=> (and  (mem2 x_338 x_337 x_324) (mem2 x_339 x_337 x_324)) (= x_338 x_339))))) (<= x_323 3))))
; Local hypotheses
; Goal
(assert (not (forall ((x_340 Int) ) (=> (exists ( (x_341 (P (C Int Int))) ) (and (and (exists ( (x_342 (P (C Int Int))) ) (and (forall ( (x_343 Int) (x_344 Int) ) (= (mem2 x_344 x_343 x_342) (mem2 x_344 x_343 x_341))) (forall ( (x_345 Int) (x_346 Int) (x_347 Int) ) (=> (and  (mem2 x_345 x_346 x_342) (mem2 x_345 x_347 x_342)) (= x_346 x_347))) (forall ( (x_348 Int) ) (= (mem0 x_348 g_S1_0) (exists ( (x_349 Int) ) (mem2 x_348 x_349 x_342)))) (forall ( (x_350 Int) ) (=> (exists ( (x_351 Int) ) (mem2 x_351 x_350 x_342)) (and (>= x_350 1) (<= x_350 x_340)))))) (forall ( (x_352 Int) ) (=> (and (>= x_352 1) (<= x_352 x_340)) (exists ( (x_353 Int) ) (mem2 x_353 x_352 x_341))))) (forall ( (x_354 Int) (x_355 Int) (x_356 Int) ) (=> (and  (mem2 x_355 x_354 x_341) (mem2 x_356 x_354 x_341)) (= x_355 x_356))))) (<= 0 x_340)))))
(check-sat)
(exit)
