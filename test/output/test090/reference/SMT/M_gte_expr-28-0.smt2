(set-option :print-success false)
(set-logic ALL)
; PO 28 0
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
(assert (forall ((x_3332 (P Int)) ) (=> (forall ( (x_3333 Int) ) (= (mem0 x_3333 x_3332) (exists ( (x_3334 Int) ) (and  (mem0 x_3334 g_S1_0) (= x_3333 x_3334))))) (>= (isum x_3332) 0))))
(assert (forall ((x_3335 (P Int)) ) (=> (forall ( (x_3336 Int) ) (= (mem0 x_3336 x_3335) (exists ( (x_3337 Int) ) (and  (mem0 x_3337 g_S2_1) (= x_3336 x_3337))))) (>= (isum x_3335) 1))))
(assert (forall ((x_3338 (P Int)) ) (=> (forall ( (x_3339 Int) ) (= (mem0 x_3339 x_3338) (exists ( (x_3340 Int) ) (and  (mem0 x_3340 g_S3_2) (= x_3339 x_3340))))) (>= (isum x_3338) 6))))
(assert (forall ((x_3341 (P Int)) ) (=> (forall ( (x_3342 Int) ) (= (mem0 x_3342 x_3341) (exists ( (x_3343 Int) ) (and  (mem0 x_3343 g_S1_0) (= x_3342 x_3343))))) (>= (iprod x_3341) 1))))
(assert (forall ((x_3344 (P Int)) ) (=> (forall ( (x_3345 Int) ) (= (mem0 x_3345 x_3344) (exists ( (x_3346 Int) ) (and  (mem0 x_3346 g_S2_1) (= x_3345 x_3346))))) (>= (iprod x_3344) 1))))
(assert (forall ((x_3347 (P Int)) ) (=> (forall ( (x_3348 Int) ) (= (mem0 x_3348 x_3347) (exists ( (x_3349 Int) ) (and  (mem0 x_3349 g_S3_2) (= x_3348 x_3349))))) (>= (iprod x_3347) 6))))
(assert (forall ((x_3350 Int) ) (=> (exists ( (x_3351 (P (C Int Int))) ) (and (and (exists ( (x_3352 (P (C Int Int))) ) (and (forall ( (x_3353 Int) (x_3354 Int) ) (= (mem2 x_3354 x_3353 x_3352) (mem2 x_3354 x_3353 x_3351))) (forall ( (x_3355 Int) (x_3356 Int) (x_3357 Int) ) (=> (and  (mem2 x_3355 x_3356 x_3352) (mem2 x_3355 x_3357 x_3352)) (= x_3356 x_3357))) (forall ( (x_3358 Int) ) (= (mem0 x_3358 g_S1_0) (exists ( (x_3359 Int) ) (mem2 x_3358 x_3359 x_3352)))) (forall ( (x_3360 Int) ) (=> (exists ( (x_3361 Int) ) (mem2 x_3361 x_3360 x_3352)) (and (>= x_3360 1) (<= x_3360 x_3350)))))) (forall ( (x_3362 Int) ) (=> (and (>= x_3362 1) (<= x_3362 x_3350)) (exists ( (x_3363 Int) ) (mem2 x_3363 x_3362 x_3351))))) (forall ( (x_3364 Int) (x_3365 Int) (x_3366 Int) ) (=> (and  (mem2 x_3365 x_3364 x_3351) (mem2 x_3366 x_3364 x_3351)) (= x_3365 x_3366))))) (>= x_3350 0))))
(assert (forall ((x_3367 Int) ) (=> (exists ( (x_3368 (P (C Int Int))) ) (and (and (exists ( (x_3369 (P (C Int Int))) ) (and (forall ( (x_3370 Int) (x_3371 Int) ) (= (mem2 x_3371 x_3370 x_3369) (mem2 x_3371 x_3370 x_3368))) (forall ( (x_3372 Int) (x_3373 Int) (x_3374 Int) ) (=> (and  (mem2 x_3372 x_3373 x_3369) (mem2 x_3372 x_3374 x_3369)) (= x_3373 x_3374))) (forall ( (x_3375 Int) ) (= (mem0 x_3375 g_S2_1) (exists ( (x_3376 Int) ) (mem2 x_3375 x_3376 x_3369)))) (forall ( (x_3377 Int) ) (=> (exists ( (x_3378 Int) ) (mem2 x_3378 x_3377 x_3369)) (and (>= x_3377 1) (<= x_3377 x_3367)))))) (forall ( (x_3379 Int) ) (=> (and (>= x_3379 1) (<= x_3379 x_3367)) (exists ( (x_3380 Int) ) (mem2 x_3380 x_3379 x_3368))))) (forall ( (x_3381 Int) (x_3382 Int) (x_3383 Int) ) (=> (and  (mem2 x_3382 x_3381 x_3368) (mem2 x_3383 x_3381 x_3368)) (= x_3382 x_3383))))) (>= x_3367 1))))
(assert (forall ((x_3384 Int) ) (=> (exists ( (x_3385 (P (C Int Int))) ) (and (and (exists ( (x_3386 (P (C Int Int))) ) (and (forall ( (x_3387 Int) (x_3388 Int) ) (= (mem2 x_3388 x_3387 x_3386) (mem2 x_3388 x_3387 x_3385))) (forall ( (x_3389 Int) (x_3390 Int) (x_3391 Int) ) (=> (and  (mem2 x_3389 x_3390 x_3386) (mem2 x_3389 x_3391 x_3386)) (= x_3390 x_3391))) (forall ( (x_3392 Int) ) (= (mem0 x_3392 g_S3_2) (exists ( (x_3393 Int) ) (mem2 x_3392 x_3393 x_3386)))) (forall ( (x_3394 Int) ) (=> (exists ( (x_3395 Int) ) (mem2 x_3395 x_3394 x_3386)) (and (>= x_3394 1) (<= x_3394 x_3384)))))) (forall ( (x_3396 Int) ) (=> (and (>= x_3396 1) (<= x_3396 x_3384)) (exists ( (x_3397 Int) ) (mem2 x_3397 x_3396 x_3385))))) (forall ( (x_3398 Int) (x_3399 Int) (x_3400 Int) ) (=> (and  (mem2 x_3399 x_3398 x_3385) (mem2 x_3400 x_3398 x_3385)) (= x_3399 x_3400))))) (>= x_3384 3))))
(assert (forall ((x_3401 Int) ) (=> (exists ( (x_3402 (P (C Int Int))) ) (and (and (exists ( (x_3403 (P (C Int Int))) ) (and (forall ( (x_3404 Int) (x_3405 Int) ) (= (mem2 x_3405 x_3404 x_3403) (mem2 x_3405 x_3404 x_3402))) (forall ( (x_3406 Int) (x_3407 Int) (x_3408 Int) ) (=> (and  (mem2 x_3406 x_3407 x_3403) (mem2 x_3406 x_3408 x_3403)) (= x_3407 x_3408))) (forall ( (x_3409 Int) ) (= (mem0 x_3409 g_S1_0) (exists ( (x_3410 Int) ) (mem2 x_3409 x_3410 x_3403)))) (forall ( (x_3411 Int) ) (=> (exists ( (x_3412 Int) ) (mem2 x_3412 x_3411 x_3403)) (and (>= x_3411 1) (<= x_3411 x_3401)))))) (forall ( (x_3413 Int) ) (=> (and (>= x_3413 1) (<= x_3413 x_3401)) (exists ( (x_3414 Int) ) (mem2 x_3414 x_3413 x_3402))))) (forall ( (x_3415 Int) (x_3416 Int) (x_3417 Int) ) (=> (and  (mem2 x_3416 x_3415 x_3402) (mem2 x_3417 x_3415 x_3402)) (= x_3416 x_3417))))) (>= 0 x_3401))))
(assert (forall ((x_3418 Int) ) (=> (exists ( (x_3419 (P (C Int Int))) ) (and (and (exists ( (x_3420 (P (C Int Int))) ) (and (forall ( (x_3421 Int) (x_3422 Int) ) (= (mem2 x_3422 x_3421 x_3420) (mem2 x_3422 x_3421 x_3419))) (forall ( (x_3423 Int) (x_3424 Int) (x_3425 Int) ) (=> (and  (mem2 x_3423 x_3424 x_3420) (mem2 x_3423 x_3425 x_3420)) (= x_3424 x_3425))) (forall ( (x_3426 Int) ) (= (mem0 x_3426 g_S2_1) (exists ( (x_3427 Int) ) (mem2 x_3426 x_3427 x_3420)))) (forall ( (x_3428 Int) ) (=> (exists ( (x_3429 Int) ) (mem2 x_3429 x_3428 x_3420)) (and (>= x_3428 1) (<= x_3428 x_3418)))))) (forall ( (x_3430 Int) ) (=> (and (>= x_3430 1) (<= x_3430 x_3418)) (exists ( (x_3431 Int) ) (mem2 x_3431 x_3430 x_3419))))) (forall ( (x_3432 Int) (x_3433 Int) (x_3434 Int) ) (=> (and  (mem2 x_3433 x_3432 x_3419) (mem2 x_3434 x_3432 x_3419)) (= x_3433 x_3434))))) (>= 1 x_3418))))
(assert (forall ((x_3435 Int) ) (=> (exists ( (x_3436 (P (C Int Int))) ) (and (and (exists ( (x_3437 (P (C Int Int))) ) (and (forall ( (x_3438 Int) (x_3439 Int) ) (= (mem2 x_3439 x_3438 x_3437) (mem2 x_3439 x_3438 x_3436))) (forall ( (x_3440 Int) (x_3441 Int) (x_3442 Int) ) (=> (and  (mem2 x_3440 x_3441 x_3437) (mem2 x_3440 x_3442 x_3437)) (= x_3441 x_3442))) (forall ( (x_3443 Int) ) (= (mem0 x_3443 g_S3_2) (exists ( (x_3444 Int) ) (mem2 x_3443 x_3444 x_3437)))) (forall ( (x_3445 Int) ) (=> (exists ( (x_3446 Int) ) (mem2 x_3446 x_3445 x_3437)) (and (>= x_3445 1) (<= x_3445 x_3435)))))) (forall ( (x_3447 Int) ) (=> (and (>= x_3447 1) (<= x_3447 x_3435)) (exists ( (x_3448 Int) ) (mem2 x_3448 x_3447 x_3436))))) (forall ( (x_3449 Int) (x_3450 Int) (x_3451 Int) ) (=> (and  (mem2 x_3450 x_3449 x_3436) (mem2 x_3451 x_3449 x_3436)) (= x_3450 x_3451))))) (>= 3 x_3435))))
(assert (forall ((x_3452 Int)(x_3453 Int) ) (=> (and (exists ( (x_3454 (P (C Int Int))) ) (and (and (exists ( (x_3455 (P (C Int Int))) ) (and (forall ( (x_3456 Int) (x_3457 Int) ) (= (mem2 x_3457 x_3456 x_3455) (mem2 x_3457 x_3456 x_3454))) (forall ( (x_3458 Int) (x_3459 Int) (x_3460 Int) ) (=> (and  (mem2 x_3458 x_3459 x_3455) (mem2 x_3458 x_3460 x_3455)) (= x_3459 x_3460))) (forall ( (x_3461 Int) ) (= (mem0 x_3461 g_S1_0) (exists ( (x_3462 Int) ) (mem2 x_3461 x_3462 x_3455)))) (forall ( (x_3463 Int) ) (=> (exists ( (x_3464 Int) ) (mem2 x_3464 x_3463 x_3455)) (and (>= x_3463 1) (<= x_3463 x_3452)))))) (forall ( (x_3465 Int) ) (=> (and (>= x_3465 1) (<= x_3465 x_3452)) (exists ( (x_3466 Int) ) (mem2 x_3466 x_3465 x_3454))))) (forall ( (x_3467 Int) (x_3468 Int) (x_3469 Int) ) (=> (and  (mem2 x_3468 x_3467 x_3454) (mem2 x_3469 x_3467 x_3454)) (= x_3468 x_3469))))) (exists ( (x_3470 (P (C Int Int))) ) (and (and (exists ( (x_3471 (P (C Int Int))) ) (and (forall ( (x_3472 Int) (x_3473 Int) ) (= (mem2 x_3473 x_3472 x_3471) (mem2 x_3473 x_3472 x_3470))) (forall ( (x_3474 Int) (x_3475 Int) (x_3476 Int) ) (=> (and  (mem2 x_3474 x_3475 x_3471) (mem2 x_3474 x_3476 x_3471)) (= x_3475 x_3476))) (forall ( (x_3477 Int) ) (= (mem0 x_3477 g_S2_1) (exists ( (x_3478 Int) ) (mem2 x_3477 x_3478 x_3471)))) (forall ( (x_3479 Int) ) (=> (exists ( (x_3480 Int) ) (mem2 x_3480 x_3479 x_3471)) (and (>= x_3479 1) (<= x_3479 x_3453)))))) (forall ( (x_3481 Int) ) (=> (and (>= x_3481 1) (<= x_3481 x_3453)) (exists ( (x_3482 Int) ) (mem2 x_3482 x_3481 x_3470))))) (forall ( (x_3483 Int) (x_3484 Int) (x_3485 Int) ) (=> (and  (mem2 x_3484 x_3483 x_3470) (mem2 x_3485 x_3483 x_3470)) (= x_3484 x_3485)))))) (>= x_3452 x_3453))))
(assert (forall ((x_3486 Int) ) (=> (and  (mem0 x_3486 g_S2_1) (forall ( (x_3487 Int) ) (=> (mem0 x_3487 g_S2_1) (<= x_3486 x_3487)))) (>= x_3486 3))))
(assert (forall ((x_3488 Int) ) (=> (and  (mem0 x_3488 g_S2_1) (forall ( (x_3489 Int) ) (=> (mem0 x_3489 g_S2_1) (>= x_3488 x_3489)))) (>= x_3488 1))))
(assert (forall ((x_3490 Int) ) (=> (and  (mem0 x_3490 g_S2_1) (forall ( (x_3491 Int) ) (=> (mem0 x_3491 g_S2_1) (<= x_3490 x_3491)))) (>= 1 x_3490))))
(assert (forall ((x_3492 Int) ) (=> (and  (mem0 x_3492 g_S2_1) (forall ( (x_3493 Int) ) (=> (mem0 x_3493 g_S2_1) (>= x_3492 x_3493)))) (>= 3 x_3492))))
(assert (forall ((x_3494 Int)(x_3495 Int) ) (=> (and (and  (mem0 x_3494 g_S1_0) (forall ( (x_3496 Int) ) (=> (mem0 x_3496 g_S1_0) (>= x_3494 x_3496)))) (and  (mem0 x_3495 g_S1_0) (forall ( (x_3497 Int) ) (=> (mem0 x_3497 g_S1_0) (<= x_3495 x_3497))))) (>= x_3494 x_3495))))
(assert (forall ((x_3498 Int) ) (=> (forall ((x_3499 Int) ) (=> (= x_3499 2) (mem2 x_3499 x_3498 g_rel1_3))) (>= x_3498 7))))
(assert (forall ((x_3500 Int) ) (=> (forall ((x_3501 Int) ) (=> (= x_3501 2) (mem2 x_3501 x_3500 g_rel1_3))) (>= 7 x_3500))))
(assert (forall ((x_3502 Int) ) (=> (forall ((x_3503 Int) ) (=> (= x_3503 1) (mem2 x_3503 x_3502 g_fun1_4))) (>= x_3502 3))))
(assert (forall ((x_3504 Int) ) (=> (forall ((x_3505 Int) ) (=> (= x_3505 1) (mem2 x_3505 x_3504 g_fun1_4))) (>= 3 x_3504))))
(assert (forall ((x_3506 Int)(x_3507 Int) ) (=> (and (forall ((x_3508 Int) ) (=> (= x_3508 1) (mem2 x_3508 x_3506 g_fun2_5))) (forall ((x_3509 Int) ) (=> (= x_3509 1) (mem2 x_3509 x_3507 g_fun3_6)))) (>= x_3506 x_3507))))
(assert (forall ((x_3510 Int) ) (=> (forall ((x_3511 Int) ) (=> (= x_3511 1) (mem2 x_3511 x_3510 g_ss_7))) (>= x_3510 7))))
(assert (forall ((x_3512 Int) ) (=> (forall ((x_3513 Int) ) (=> (= x_3513 1) (mem2 x_3513 x_3512 g_ss_7))) (>= 7 x_3512))))
(assert (forall ((x_3514 Int) ) (=> (forall ((x_3515 Int) ) (=> (forall ( (x_3516 Int) ) (= (exists ( (x_3517 Int) ) (mem2 x_3516 x_3517 g_ss_7)) (and (>= x_3516 1) (<= x_3516 x_3515)))) (mem2 x_3515 x_3514 g_ss_7))) (>= x_3514 21))))
(assert (forall ((x_3518 Int) ) (=> (forall ((x_3519 Int) ) (=> (forall ( (x_3520 Int) ) (= (exists ( (x_3521 Int) ) (mem2 x_3520 x_3521 g_ss_7)) (and (>= x_3520 1) (<= x_3520 x_3519)))) (mem2 x_3519 x_3518 g_ss_7))) (>= 21 x_3518))))
(assert (forall ((x_3522 Int)(x_3523 Int) ) (=> (and (forall ((x_3524 Int) ) (=> (= x_3524 1) (mem2 x_3524 x_3522 g_ss_7))) (forall ((x_3525 Int) ) (=> (forall ( (x_3526 Int) ) (= (exists ( (x_3527 Int) ) (mem2 x_3526 x_3527 g_ss_7)) (and (>= x_3526 1) (<= x_3526 x_3525)))) (mem2 x_3525 x_3523 g_ss_7)))) (>= x_3522 x_3523))))
; Local hypotheses
; Goal
(assert (not (forall ((x_3528 Int) ) (=> (forall ( (x_3529 Int) ) (= (exists ( (x_3530 Int) ) (mem2 x_3529 x_3530 g_ss_7)) (and (>= x_3529 1) (<= x_3529 x_3528)))) (>= x_3528 4)))))
(check-sat)
(exit)
