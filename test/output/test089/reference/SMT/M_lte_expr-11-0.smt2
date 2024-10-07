(set-option :print-success false)
(set-logic ALL)
; PO 11 0
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
(assert (forall ((x_460 (P Int)) ) (=> (forall ( (x_461 Int) ) (= (mem0 x_461 x_460) (exists ( (x_462 Int) ) (and  (mem0 x_462 g_S1_0) (= x_461 x_462))))) (<= (isum x_460) 0))))
(assert (forall ((x_463 (P Int)) ) (=> (forall ( (x_464 Int) ) (= (mem0 x_464 x_463) (exists ( (x_465 Int) ) (and  (mem0 x_465 g_S2_1) (= x_464 x_465))))) (<= (isum x_463) 1))))
(assert (forall ((x_466 (P Int)) ) (=> (forall ( (x_467 Int) ) (= (mem0 x_467 x_466) (exists ( (x_468 Int) ) (and  (mem0 x_468 g_S3_2) (= x_467 x_468))))) (<= (isum x_466) 6))))
(assert (forall ((x_469 (P Int)) ) (=> (forall ( (x_470 Int) ) (= (mem0 x_470 x_469) (exists ( (x_471 Int) ) (and  (mem0 x_471 g_S1_0) (= x_470 x_471))))) (<= (iprod x_469) 1))))
(assert (forall ((x_472 (P Int)) ) (=> (forall ( (x_473 Int) ) (= (mem0 x_473 x_472) (exists ( (x_474 Int) ) (and  (mem0 x_474 g_S2_1) (= x_473 x_474))))) (<= (iprod x_472) 1))))
(assert (forall ((x_475 (P Int)) ) (=> (forall ( (x_476 Int) ) (= (mem0 x_476 x_475) (exists ( (x_477 Int) ) (and  (mem0 x_477 g_S3_2) (= x_476 x_477))))) (<= (iprod x_475) 6))))
(assert (forall ((x_478 Int) ) (=> (exists ( (x_479 (P (C Int Int))) ) (and (and (exists ( (x_480 (P (C Int Int))) ) (and (forall ( (x_481 Int) (x_482 Int) ) (= (mem2 x_482 x_481 x_480) (mem2 x_482 x_481 x_479))) (forall ( (x_483 Int) (x_484 Int) (x_485 Int) ) (=> (and  (mem2 x_483 x_484 x_480) (mem2 x_483 x_485 x_480)) (= x_484 x_485))) (forall ( (x_486 Int) ) (= (mem0 x_486 g_S1_0) (exists ( (x_487 Int) ) (mem2 x_486 x_487 x_480)))) (forall ( (x_488 Int) ) (=> (exists ( (x_489 Int) ) (mem2 x_489 x_488 x_480)) (and (>= x_488 1) (<= x_488 x_478)))))) (forall ( (x_490 Int) ) (=> (and (>= x_490 1) (<= x_490 x_478)) (exists ( (x_491 Int) ) (mem2 x_491 x_490 x_479))))) (forall ( (x_492 Int) (x_493 Int) (x_494 Int) ) (=> (and  (mem2 x_493 x_492 x_479) (mem2 x_494 x_492 x_479)) (= x_493 x_494))))) (<= x_478 0))))
(assert (forall ((x_495 Int) ) (=> (exists ( (x_496 (P (C Int Int))) ) (and (and (exists ( (x_497 (P (C Int Int))) ) (and (forall ( (x_498 Int) (x_499 Int) ) (= (mem2 x_499 x_498 x_497) (mem2 x_499 x_498 x_496))) (forall ( (x_500 Int) (x_501 Int) (x_502 Int) ) (=> (and  (mem2 x_500 x_501 x_497) (mem2 x_500 x_502 x_497)) (= x_501 x_502))) (forall ( (x_503 Int) ) (= (mem0 x_503 g_S2_1) (exists ( (x_504 Int) ) (mem2 x_503 x_504 x_497)))) (forall ( (x_505 Int) ) (=> (exists ( (x_506 Int) ) (mem2 x_506 x_505 x_497)) (and (>= x_505 1) (<= x_505 x_495)))))) (forall ( (x_507 Int) ) (=> (and (>= x_507 1) (<= x_507 x_495)) (exists ( (x_508 Int) ) (mem2 x_508 x_507 x_496))))) (forall ( (x_509 Int) (x_510 Int) (x_511 Int) ) (=> (and  (mem2 x_510 x_509 x_496) (mem2 x_511 x_509 x_496)) (= x_510 x_511))))) (<= x_495 1))))
(assert (forall ((x_512 Int) ) (=> (exists ( (x_513 (P (C Int Int))) ) (and (and (exists ( (x_514 (P (C Int Int))) ) (and (forall ( (x_515 Int) (x_516 Int) ) (= (mem2 x_516 x_515 x_514) (mem2 x_516 x_515 x_513))) (forall ( (x_517 Int) (x_518 Int) (x_519 Int) ) (=> (and  (mem2 x_517 x_518 x_514) (mem2 x_517 x_519 x_514)) (= x_518 x_519))) (forall ( (x_520 Int) ) (= (mem0 x_520 g_S3_2) (exists ( (x_521 Int) ) (mem2 x_520 x_521 x_514)))) (forall ( (x_522 Int) ) (=> (exists ( (x_523 Int) ) (mem2 x_523 x_522 x_514)) (and (>= x_522 1) (<= x_522 x_512)))))) (forall ( (x_524 Int) ) (=> (and (>= x_524 1) (<= x_524 x_512)) (exists ( (x_525 Int) ) (mem2 x_525 x_524 x_513))))) (forall ( (x_526 Int) (x_527 Int) (x_528 Int) ) (=> (and  (mem2 x_527 x_526 x_513) (mem2 x_528 x_526 x_513)) (= x_527 x_528))))) (<= x_512 3))))
(assert (forall ((x_529 Int) ) (=> (exists ( (x_530 (P (C Int Int))) ) (and (and (exists ( (x_531 (P (C Int Int))) ) (and (forall ( (x_532 Int) (x_533 Int) ) (= (mem2 x_533 x_532 x_531) (mem2 x_533 x_532 x_530))) (forall ( (x_534 Int) (x_535 Int) (x_536 Int) ) (=> (and  (mem2 x_534 x_535 x_531) (mem2 x_534 x_536 x_531)) (= x_535 x_536))) (forall ( (x_537 Int) ) (= (mem0 x_537 g_S1_0) (exists ( (x_538 Int) ) (mem2 x_537 x_538 x_531)))) (forall ( (x_539 Int) ) (=> (exists ( (x_540 Int) ) (mem2 x_540 x_539 x_531)) (and (>= x_539 1) (<= x_539 x_529)))))) (forall ( (x_541 Int) ) (=> (and (>= x_541 1) (<= x_541 x_529)) (exists ( (x_542 Int) ) (mem2 x_542 x_541 x_530))))) (forall ( (x_543 Int) (x_544 Int) (x_545 Int) ) (=> (and  (mem2 x_544 x_543 x_530) (mem2 x_545 x_543 x_530)) (= x_544 x_545))))) (<= 0 x_529))))
(assert (forall ((x_546 Int) ) (=> (exists ( (x_547 (P (C Int Int))) ) (and (and (exists ( (x_548 (P (C Int Int))) ) (and (forall ( (x_549 Int) (x_550 Int) ) (= (mem2 x_550 x_549 x_548) (mem2 x_550 x_549 x_547))) (forall ( (x_551 Int) (x_552 Int) (x_553 Int) ) (=> (and  (mem2 x_551 x_552 x_548) (mem2 x_551 x_553 x_548)) (= x_552 x_553))) (forall ( (x_554 Int) ) (= (mem0 x_554 g_S2_1) (exists ( (x_555 Int) ) (mem2 x_554 x_555 x_548)))) (forall ( (x_556 Int) ) (=> (exists ( (x_557 Int) ) (mem2 x_557 x_556 x_548)) (and (>= x_556 1) (<= x_556 x_546)))))) (forall ( (x_558 Int) ) (=> (and (>= x_558 1) (<= x_558 x_546)) (exists ( (x_559 Int) ) (mem2 x_559 x_558 x_547))))) (forall ( (x_560 Int) (x_561 Int) (x_562 Int) ) (=> (and  (mem2 x_561 x_560 x_547) (mem2 x_562 x_560 x_547)) (= x_561 x_562))))) (<= 1 x_546))))
; Local hypotheses
; Goal
(assert (not (forall ((x_563 Int) ) (=> (exists ( (x_564 (P (C Int Int))) ) (and (and (exists ( (x_565 (P (C Int Int))) ) (and (forall ( (x_566 Int) (x_567 Int) ) (= (mem2 x_567 x_566 x_565) (mem2 x_567 x_566 x_564))) (forall ( (x_568 Int) (x_569 Int) (x_570 Int) ) (=> (and  (mem2 x_568 x_569 x_565) (mem2 x_568 x_570 x_565)) (= x_569 x_570))) (forall ( (x_571 Int) ) (= (mem0 x_571 g_S3_2) (exists ( (x_572 Int) ) (mem2 x_571 x_572 x_565)))) (forall ( (x_573 Int) ) (=> (exists ( (x_574 Int) ) (mem2 x_574 x_573 x_565)) (and (>= x_573 1) (<= x_573 x_563)))))) (forall ( (x_575 Int) ) (=> (and (>= x_575 1) (<= x_575 x_563)) (exists ( (x_576 Int) ) (mem2 x_576 x_575 x_564))))) (forall ( (x_577 Int) (x_578 Int) (x_579 Int) ) (=> (and  (mem2 x_578 x_577 x_564) (mem2 x_579 x_577 x_564)) (= x_578 x_579))))) (<= 3 x_563)))))
(check-sat)
(exit)
