(set-option :print-success false)
(set-logic ALL)
; PO 10 0
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
(assert (forall ((x_357 (P Int)) ) (=> (forall ( (x_358 Int) ) (= (mem0 x_358 x_357) (exists ( (x_359 Int) ) (and  (mem0 x_359 g_S1_0) (= x_358 x_359))))) (>= (isum x_357) 0))))
(assert (forall ((x_360 (P Int)) ) (=> (forall ( (x_361 Int) ) (= (mem0 x_361 x_360) (exists ( (x_362 Int) ) (and  (mem0 x_362 g_S2_1) (= x_361 x_362))))) (>= (isum x_360) 1))))
(assert (forall ((x_363 (P Int)) ) (=> (forall ( (x_364 Int) ) (= (mem0 x_364 x_363) (exists ( (x_365 Int) ) (and  (mem0 x_365 g_S3_2) (= x_364 x_365))))) (>= (isum x_363) 6))))
(assert (forall ((x_366 (P Int)) ) (=> (forall ( (x_367 Int) ) (= (mem0 x_367 x_366) (exists ( (x_368 Int) ) (and  (mem0 x_368 g_S1_0) (= x_367 x_368))))) (>= (iprod x_366) 1))))
(assert (forall ((x_369 (P Int)) ) (=> (forall ( (x_370 Int) ) (= (mem0 x_370 x_369) (exists ( (x_371 Int) ) (and  (mem0 x_371 g_S2_1) (= x_370 x_371))))) (>= (iprod x_369) 1))))
(assert (forall ((x_372 (P Int)) ) (=> (forall ( (x_373 Int) ) (= (mem0 x_373 x_372) (exists ( (x_374 Int) ) (and  (mem0 x_374 g_S3_2) (= x_373 x_374))))) (>= (iprod x_372) 6))))
(assert (forall ((x_375 Int) ) (=> (exists ( (x_376 (P (C Int Int))) ) (and (and (exists ( (x_377 (P (C Int Int))) ) (and (forall ( (x_378 Int) (x_379 Int) ) (= (mem2 x_379 x_378 x_377) (mem2 x_379 x_378 x_376))) (forall ( (x_380 Int) (x_381 Int) (x_382 Int) ) (=> (and  (mem2 x_380 x_381 x_377) (mem2 x_380 x_382 x_377)) (= x_381 x_382))) (forall ( (x_383 Int) ) (= (mem0 x_383 g_S1_0) (exists ( (x_384 Int) ) (mem2 x_383 x_384 x_377)))) (forall ( (x_385 Int) ) (=> (exists ( (x_386 Int) ) (mem2 x_386 x_385 x_377)) (and (>= x_385 1) (<= x_385 x_375)))))) (forall ( (x_387 Int) ) (=> (and (>= x_387 1) (<= x_387 x_375)) (exists ( (x_388 Int) ) (mem2 x_388 x_387 x_376))))) (forall ( (x_389 Int) (x_390 Int) (x_391 Int) ) (=> (and  (mem2 x_390 x_389 x_376) (mem2 x_391 x_389 x_376)) (= x_390 x_391))))) (>= x_375 0))))
(assert (forall ((x_392 Int) ) (=> (exists ( (x_393 (P (C Int Int))) ) (and (and (exists ( (x_394 (P (C Int Int))) ) (and (forall ( (x_395 Int) (x_396 Int) ) (= (mem2 x_396 x_395 x_394) (mem2 x_396 x_395 x_393))) (forall ( (x_397 Int) (x_398 Int) (x_399 Int) ) (=> (and  (mem2 x_397 x_398 x_394) (mem2 x_397 x_399 x_394)) (= x_398 x_399))) (forall ( (x_400 Int) ) (= (mem0 x_400 g_S2_1) (exists ( (x_401 Int) ) (mem2 x_400 x_401 x_394)))) (forall ( (x_402 Int) ) (=> (exists ( (x_403 Int) ) (mem2 x_403 x_402 x_394)) (and (>= x_402 1) (<= x_402 x_392)))))) (forall ( (x_404 Int) ) (=> (and (>= x_404 1) (<= x_404 x_392)) (exists ( (x_405 Int) ) (mem2 x_405 x_404 x_393))))) (forall ( (x_406 Int) (x_407 Int) (x_408 Int) ) (=> (and  (mem2 x_407 x_406 x_393) (mem2 x_408 x_406 x_393)) (= x_407 x_408))))) (>= x_392 1))))
(assert (forall ((x_409 Int) ) (=> (exists ( (x_410 (P (C Int Int))) ) (and (and (exists ( (x_411 (P (C Int Int))) ) (and (forall ( (x_412 Int) (x_413 Int) ) (= (mem2 x_413 x_412 x_411) (mem2 x_413 x_412 x_410))) (forall ( (x_414 Int) (x_415 Int) (x_416 Int) ) (=> (and  (mem2 x_414 x_415 x_411) (mem2 x_414 x_416 x_411)) (= x_415 x_416))) (forall ( (x_417 Int) ) (= (mem0 x_417 g_S3_2) (exists ( (x_418 Int) ) (mem2 x_417 x_418 x_411)))) (forall ( (x_419 Int) ) (=> (exists ( (x_420 Int) ) (mem2 x_420 x_419 x_411)) (and (>= x_419 1) (<= x_419 x_409)))))) (forall ( (x_421 Int) ) (=> (and (>= x_421 1) (<= x_421 x_409)) (exists ( (x_422 Int) ) (mem2 x_422 x_421 x_410))))) (forall ( (x_423 Int) (x_424 Int) (x_425 Int) ) (=> (and  (mem2 x_424 x_423 x_410) (mem2 x_425 x_423 x_410)) (= x_424 x_425))))) (>= x_409 3))))
(assert (forall ((x_426 Int) ) (=> (exists ( (x_427 (P (C Int Int))) ) (and (and (exists ( (x_428 (P (C Int Int))) ) (and (forall ( (x_429 Int) (x_430 Int) ) (= (mem2 x_430 x_429 x_428) (mem2 x_430 x_429 x_427))) (forall ( (x_431 Int) (x_432 Int) (x_433 Int) ) (=> (and  (mem2 x_431 x_432 x_428) (mem2 x_431 x_433 x_428)) (= x_432 x_433))) (forall ( (x_434 Int) ) (= (mem0 x_434 g_S1_0) (exists ( (x_435 Int) ) (mem2 x_434 x_435 x_428)))) (forall ( (x_436 Int) ) (=> (exists ( (x_437 Int) ) (mem2 x_437 x_436 x_428)) (and (>= x_436 1) (<= x_436 x_426)))))) (forall ( (x_438 Int) ) (=> (and (>= x_438 1) (<= x_438 x_426)) (exists ( (x_439 Int) ) (mem2 x_439 x_438 x_427))))) (forall ( (x_440 Int) (x_441 Int) (x_442 Int) ) (=> (and  (mem2 x_441 x_440 x_427) (mem2 x_442 x_440 x_427)) (= x_441 x_442))))) (>= 0 x_426))))
; Local hypotheses
; Goal
(assert (not (forall ((x_443 Int) ) (=> (exists ( (x_444 (P (C Int Int))) ) (and (and (exists ( (x_445 (P (C Int Int))) ) (and (forall ( (x_446 Int) (x_447 Int) ) (= (mem2 x_447 x_446 x_445) (mem2 x_447 x_446 x_444))) (forall ( (x_448 Int) (x_449 Int) (x_450 Int) ) (=> (and  (mem2 x_448 x_449 x_445) (mem2 x_448 x_450 x_445)) (= x_449 x_450))) (forall ( (x_451 Int) ) (= (mem0 x_451 g_S2_1) (exists ( (x_452 Int) ) (mem2 x_451 x_452 x_445)))) (forall ( (x_453 Int) ) (=> (exists ( (x_454 Int) ) (mem2 x_454 x_453 x_445)) (and (>= x_453 1) (<= x_453 x_443)))))) (forall ( (x_455 Int) ) (=> (and (>= x_455 1) (<= x_455 x_443)) (exists ( (x_456 Int) ) (mem2 x_456 x_455 x_444))))) (forall ( (x_457 Int) (x_458 Int) (x_459 Int) ) (=> (and  (mem2 x_458 x_457 x_444) (mem2 x_459 x_457 x_444)) (= x_458 x_459))))) (>= 1 x_443)))))
(check-sat)
(exit)
