(set-option :print-success false)
(set-logic ALL)
; PO 23 0
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
(assert (forall ((x_2398 (P Int)) ) (=> (forall ( (x_2399 Int) ) (= (mem0 x_2399 x_2398) (exists ( (x_2400 Int) ) (and  (mem0 x_2400 g_S1_0) (= x_2399 x_2400))))) (>= (isum x_2398) 0))))
(assert (forall ((x_2401 (P Int)) ) (=> (forall ( (x_2402 Int) ) (= (mem0 x_2402 x_2401) (exists ( (x_2403 Int) ) (and  (mem0 x_2403 g_S2_1) (= x_2402 x_2403))))) (>= (isum x_2401) 1))))
(assert (forall ((x_2404 (P Int)) ) (=> (forall ( (x_2405 Int) ) (= (mem0 x_2405 x_2404) (exists ( (x_2406 Int) ) (and  (mem0 x_2406 g_S3_2) (= x_2405 x_2406))))) (>= (isum x_2404) 6))))
(assert (forall ((x_2407 (P Int)) ) (=> (forall ( (x_2408 Int) ) (= (mem0 x_2408 x_2407) (exists ( (x_2409 Int) ) (and  (mem0 x_2409 g_S1_0) (= x_2408 x_2409))))) (>= (iprod x_2407) 1))))
(assert (forall ((x_2410 (P Int)) ) (=> (forall ( (x_2411 Int) ) (= (mem0 x_2411 x_2410) (exists ( (x_2412 Int) ) (and  (mem0 x_2412 g_S2_1) (= x_2411 x_2412))))) (>= (iprod x_2410) 1))))
(assert (forall ((x_2413 (P Int)) ) (=> (forall ( (x_2414 Int) ) (= (mem0 x_2414 x_2413) (exists ( (x_2415 Int) ) (and  (mem0 x_2415 g_S3_2) (= x_2414 x_2415))))) (>= (iprod x_2413) 6))))
(assert (forall ((x_2416 Int) ) (=> (exists ( (x_2417 (P (C Int Int))) ) (and (and (exists ( (x_2418 (P (C Int Int))) ) (and (forall ( (x_2419 Int) (x_2420 Int) ) (= (mem2 x_2420 x_2419 x_2418) (mem2 x_2420 x_2419 x_2417))) (forall ( (x_2421 Int) (x_2422 Int) (x_2423 Int) ) (=> (and  (mem2 x_2421 x_2422 x_2418) (mem2 x_2421 x_2423 x_2418)) (= x_2422 x_2423))) (forall ( (x_2424 Int) ) (= (mem0 x_2424 g_S1_0) (exists ( (x_2425 Int) ) (mem2 x_2424 x_2425 x_2418)))) (forall ( (x_2426 Int) ) (=> (exists ( (x_2427 Int) ) (mem2 x_2427 x_2426 x_2418)) (and (>= x_2426 1) (<= x_2426 x_2416)))))) (forall ( (x_2428 Int) ) (=> (and (>= x_2428 1) (<= x_2428 x_2416)) (exists ( (x_2429 Int) ) (mem2 x_2429 x_2428 x_2417))))) (forall ( (x_2430 Int) (x_2431 Int) (x_2432 Int) ) (=> (and  (mem2 x_2431 x_2430 x_2417) (mem2 x_2432 x_2430 x_2417)) (= x_2431 x_2432))))) (>= x_2416 0))))
(assert (forall ((x_2433 Int) ) (=> (exists ( (x_2434 (P (C Int Int))) ) (and (and (exists ( (x_2435 (P (C Int Int))) ) (and (forall ( (x_2436 Int) (x_2437 Int) ) (= (mem2 x_2437 x_2436 x_2435) (mem2 x_2437 x_2436 x_2434))) (forall ( (x_2438 Int) (x_2439 Int) (x_2440 Int) ) (=> (and  (mem2 x_2438 x_2439 x_2435) (mem2 x_2438 x_2440 x_2435)) (= x_2439 x_2440))) (forall ( (x_2441 Int) ) (= (mem0 x_2441 g_S2_1) (exists ( (x_2442 Int) ) (mem2 x_2441 x_2442 x_2435)))) (forall ( (x_2443 Int) ) (=> (exists ( (x_2444 Int) ) (mem2 x_2444 x_2443 x_2435)) (and (>= x_2443 1) (<= x_2443 x_2433)))))) (forall ( (x_2445 Int) ) (=> (and (>= x_2445 1) (<= x_2445 x_2433)) (exists ( (x_2446 Int) ) (mem2 x_2446 x_2445 x_2434))))) (forall ( (x_2447 Int) (x_2448 Int) (x_2449 Int) ) (=> (and  (mem2 x_2448 x_2447 x_2434) (mem2 x_2449 x_2447 x_2434)) (= x_2448 x_2449))))) (>= x_2433 1))))
(assert (forall ((x_2450 Int) ) (=> (exists ( (x_2451 (P (C Int Int))) ) (and (and (exists ( (x_2452 (P (C Int Int))) ) (and (forall ( (x_2453 Int) (x_2454 Int) ) (= (mem2 x_2454 x_2453 x_2452) (mem2 x_2454 x_2453 x_2451))) (forall ( (x_2455 Int) (x_2456 Int) (x_2457 Int) ) (=> (and  (mem2 x_2455 x_2456 x_2452) (mem2 x_2455 x_2457 x_2452)) (= x_2456 x_2457))) (forall ( (x_2458 Int) ) (= (mem0 x_2458 g_S3_2) (exists ( (x_2459 Int) ) (mem2 x_2458 x_2459 x_2452)))) (forall ( (x_2460 Int) ) (=> (exists ( (x_2461 Int) ) (mem2 x_2461 x_2460 x_2452)) (and (>= x_2460 1) (<= x_2460 x_2450)))))) (forall ( (x_2462 Int) ) (=> (and (>= x_2462 1) (<= x_2462 x_2450)) (exists ( (x_2463 Int) ) (mem2 x_2463 x_2462 x_2451))))) (forall ( (x_2464 Int) (x_2465 Int) (x_2466 Int) ) (=> (and  (mem2 x_2465 x_2464 x_2451) (mem2 x_2466 x_2464 x_2451)) (= x_2465 x_2466))))) (>= x_2450 3))))
(assert (forall ((x_2467 Int) ) (=> (exists ( (x_2468 (P (C Int Int))) ) (and (and (exists ( (x_2469 (P (C Int Int))) ) (and (forall ( (x_2470 Int) (x_2471 Int) ) (= (mem2 x_2471 x_2470 x_2469) (mem2 x_2471 x_2470 x_2468))) (forall ( (x_2472 Int) (x_2473 Int) (x_2474 Int) ) (=> (and  (mem2 x_2472 x_2473 x_2469) (mem2 x_2472 x_2474 x_2469)) (= x_2473 x_2474))) (forall ( (x_2475 Int) ) (= (mem0 x_2475 g_S1_0) (exists ( (x_2476 Int) ) (mem2 x_2475 x_2476 x_2469)))) (forall ( (x_2477 Int) ) (=> (exists ( (x_2478 Int) ) (mem2 x_2478 x_2477 x_2469)) (and (>= x_2477 1) (<= x_2477 x_2467)))))) (forall ( (x_2479 Int) ) (=> (and (>= x_2479 1) (<= x_2479 x_2467)) (exists ( (x_2480 Int) ) (mem2 x_2480 x_2479 x_2468))))) (forall ( (x_2481 Int) (x_2482 Int) (x_2483 Int) ) (=> (and  (mem2 x_2482 x_2481 x_2468) (mem2 x_2483 x_2481 x_2468)) (= x_2482 x_2483))))) (>= 0 x_2467))))
(assert (forall ((x_2484 Int) ) (=> (exists ( (x_2485 (P (C Int Int))) ) (and (and (exists ( (x_2486 (P (C Int Int))) ) (and (forall ( (x_2487 Int) (x_2488 Int) ) (= (mem2 x_2488 x_2487 x_2486) (mem2 x_2488 x_2487 x_2485))) (forall ( (x_2489 Int) (x_2490 Int) (x_2491 Int) ) (=> (and  (mem2 x_2489 x_2490 x_2486) (mem2 x_2489 x_2491 x_2486)) (= x_2490 x_2491))) (forall ( (x_2492 Int) ) (= (mem0 x_2492 g_S2_1) (exists ( (x_2493 Int) ) (mem2 x_2492 x_2493 x_2486)))) (forall ( (x_2494 Int) ) (=> (exists ( (x_2495 Int) ) (mem2 x_2495 x_2494 x_2486)) (and (>= x_2494 1) (<= x_2494 x_2484)))))) (forall ( (x_2496 Int) ) (=> (and (>= x_2496 1) (<= x_2496 x_2484)) (exists ( (x_2497 Int) ) (mem2 x_2497 x_2496 x_2485))))) (forall ( (x_2498 Int) (x_2499 Int) (x_2500 Int) ) (=> (and  (mem2 x_2499 x_2498 x_2485) (mem2 x_2500 x_2498 x_2485)) (= x_2499 x_2500))))) (>= 1 x_2484))))
(assert (forall ((x_2501 Int) ) (=> (exists ( (x_2502 (P (C Int Int))) ) (and (and (exists ( (x_2503 (P (C Int Int))) ) (and (forall ( (x_2504 Int) (x_2505 Int) ) (= (mem2 x_2505 x_2504 x_2503) (mem2 x_2505 x_2504 x_2502))) (forall ( (x_2506 Int) (x_2507 Int) (x_2508 Int) ) (=> (and  (mem2 x_2506 x_2507 x_2503) (mem2 x_2506 x_2508 x_2503)) (= x_2507 x_2508))) (forall ( (x_2509 Int) ) (= (mem0 x_2509 g_S3_2) (exists ( (x_2510 Int) ) (mem2 x_2509 x_2510 x_2503)))) (forall ( (x_2511 Int) ) (=> (exists ( (x_2512 Int) ) (mem2 x_2512 x_2511 x_2503)) (and (>= x_2511 1) (<= x_2511 x_2501)))))) (forall ( (x_2513 Int) ) (=> (and (>= x_2513 1) (<= x_2513 x_2501)) (exists ( (x_2514 Int) ) (mem2 x_2514 x_2513 x_2502))))) (forall ( (x_2515 Int) (x_2516 Int) (x_2517 Int) ) (=> (and  (mem2 x_2516 x_2515 x_2502) (mem2 x_2517 x_2515 x_2502)) (= x_2516 x_2517))))) (>= 3 x_2501))))
(assert (forall ((x_2518 Int)(x_2519 Int) ) (=> (and (exists ( (x_2520 (P (C Int Int))) ) (and (and (exists ( (x_2521 (P (C Int Int))) ) (and (forall ( (x_2522 Int) (x_2523 Int) ) (= (mem2 x_2523 x_2522 x_2521) (mem2 x_2523 x_2522 x_2520))) (forall ( (x_2524 Int) (x_2525 Int) (x_2526 Int) ) (=> (and  (mem2 x_2524 x_2525 x_2521) (mem2 x_2524 x_2526 x_2521)) (= x_2525 x_2526))) (forall ( (x_2527 Int) ) (= (mem0 x_2527 g_S1_0) (exists ( (x_2528 Int) ) (mem2 x_2527 x_2528 x_2521)))) (forall ( (x_2529 Int) ) (=> (exists ( (x_2530 Int) ) (mem2 x_2530 x_2529 x_2521)) (and (>= x_2529 1) (<= x_2529 x_2518)))))) (forall ( (x_2531 Int) ) (=> (and (>= x_2531 1) (<= x_2531 x_2518)) (exists ( (x_2532 Int) ) (mem2 x_2532 x_2531 x_2520))))) (forall ( (x_2533 Int) (x_2534 Int) (x_2535 Int) ) (=> (and  (mem2 x_2534 x_2533 x_2520) (mem2 x_2535 x_2533 x_2520)) (= x_2534 x_2535))))) (exists ( (x_2536 (P (C Int Int))) ) (and (and (exists ( (x_2537 (P (C Int Int))) ) (and (forall ( (x_2538 Int) (x_2539 Int) ) (= (mem2 x_2539 x_2538 x_2537) (mem2 x_2539 x_2538 x_2536))) (forall ( (x_2540 Int) (x_2541 Int) (x_2542 Int) ) (=> (and  (mem2 x_2540 x_2541 x_2537) (mem2 x_2540 x_2542 x_2537)) (= x_2541 x_2542))) (forall ( (x_2543 Int) ) (= (mem0 x_2543 g_S2_1) (exists ( (x_2544 Int) ) (mem2 x_2543 x_2544 x_2537)))) (forall ( (x_2545 Int) ) (=> (exists ( (x_2546 Int) ) (mem2 x_2546 x_2545 x_2537)) (and (>= x_2545 1) (<= x_2545 x_2519)))))) (forall ( (x_2547 Int) ) (=> (and (>= x_2547 1) (<= x_2547 x_2519)) (exists ( (x_2548 Int) ) (mem2 x_2548 x_2547 x_2536))))) (forall ( (x_2549 Int) (x_2550 Int) (x_2551 Int) ) (=> (and  (mem2 x_2550 x_2549 x_2536) (mem2 x_2551 x_2549 x_2536)) (= x_2550 x_2551)))))) (>= x_2518 x_2519))))
(assert (forall ((x_2552 Int) ) (=> (and  (mem0 x_2552 g_S2_1) (forall ( (x_2553 Int) ) (=> (mem0 x_2553 g_S2_1) (<= x_2552 x_2553)))) (>= x_2552 3))))
(assert (forall ((x_2554 Int) ) (=> (and  (mem0 x_2554 g_S2_1) (forall ( (x_2555 Int) ) (=> (mem0 x_2555 g_S2_1) (>= x_2554 x_2555)))) (>= x_2554 1))))
(assert (forall ((x_2556 Int) ) (=> (and  (mem0 x_2556 g_S2_1) (forall ( (x_2557 Int) ) (=> (mem0 x_2557 g_S2_1) (<= x_2556 x_2557)))) (>= 1 x_2556))))
(assert (forall ((x_2558 Int) ) (=> (and  (mem0 x_2558 g_S2_1) (forall ( (x_2559 Int) ) (=> (mem0 x_2559 g_S2_1) (>= x_2558 x_2559)))) (>= 3 x_2558))))
(assert (forall ((x_2560 Int)(x_2561 Int) ) (=> (and (and  (mem0 x_2560 g_S1_0) (forall ( (x_2562 Int) ) (=> (mem0 x_2562 g_S1_0) (>= x_2560 x_2562)))) (and  (mem0 x_2561 g_S1_0) (forall ( (x_2563 Int) ) (=> (mem0 x_2563 g_S1_0) (<= x_2561 x_2563))))) (>= x_2560 x_2561))))
(assert (forall ((x_2564 Int) ) (=> (forall ((x_2565 Int) ) (=> (= x_2565 2) (mem2 x_2565 x_2564 g_rel1_3))) (>= x_2564 7))))
(assert (forall ((x_2566 Int) ) (=> (forall ((x_2567 Int) ) (=> (= x_2567 2) (mem2 x_2567 x_2566 g_rel1_3))) (>= 7 x_2566))))
(assert (forall ((x_2568 Int) ) (=> (forall ((x_2569 Int) ) (=> (= x_2569 1) (mem2 x_2569 x_2568 g_fun1_4))) (>= x_2568 3))))
(assert (forall ((x_2570 Int) ) (=> (forall ((x_2571 Int) ) (=> (= x_2571 1) (mem2 x_2571 x_2570 g_fun1_4))) (>= 3 x_2570))))
(assert (forall ((x_2572 Int)(x_2573 Int) ) (=> (and (forall ((x_2574 Int) ) (=> (= x_2574 1) (mem2 x_2574 x_2572 g_fun2_5))) (forall ((x_2575 Int) ) (=> (= x_2575 1) (mem2 x_2575 x_2573 g_fun3_6)))) (>= x_2572 x_2573))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2576 Int) ) (=> (forall ((x_2577 Int) ) (=> (= x_2577 1) (mem2 x_2577 x_2576 g_ss_7))) (>= x_2576 7)))))
(check-sat)
(exit)
