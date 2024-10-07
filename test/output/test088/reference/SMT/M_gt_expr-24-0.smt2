(set-option :print-success false)
(set-logic ALL)
; PO 24 0
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
(assert (forall ((x_2578 (P Int)) ) (=> (forall ( (x_2579 Int) ) (= (mem0 x_2579 x_2578) (exists ( (x_2580 Int) ) (and  (mem0 x_2580 g_S1_0) (= x_2579 x_2580))))) (> (isum x_2578) 0))))
(assert (forall ((x_2581 (P Int)) ) (=> (forall ( (x_2582 Int) ) (= (mem0 x_2582 x_2581) (exists ( (x_2583 Int) ) (and  (mem0 x_2583 g_S2_1) (= x_2582 x_2583))))) (> (isum x_2581) 1))))
(assert (forall ((x_2584 (P Int)) ) (=> (forall ( (x_2585 Int) ) (= (mem0 x_2585 x_2584) (exists ( (x_2586 Int) ) (and  (mem0 x_2586 g_S3_2) (= x_2585 x_2586))))) (> (isum x_2584) 6))))
(assert (forall ((x_2587 (P Int)) ) (=> (forall ( (x_2588 Int) ) (= (mem0 x_2588 x_2587) (exists ( (x_2589 Int) ) (and  (mem0 x_2589 g_S1_0) (= x_2588 x_2589))))) (> (iprod x_2587) 1))))
(assert (forall ((x_2590 (P Int)) ) (=> (forall ( (x_2591 Int) ) (= (mem0 x_2591 x_2590) (exists ( (x_2592 Int) ) (and  (mem0 x_2592 g_S2_1) (= x_2591 x_2592))))) (> (iprod x_2590) 1))))
(assert (forall ((x_2593 (P Int)) ) (=> (forall ( (x_2594 Int) ) (= (mem0 x_2594 x_2593) (exists ( (x_2595 Int) ) (and  (mem0 x_2595 g_S3_2) (= x_2594 x_2595))))) (> (iprod x_2593) 6))))
(assert (forall ((x_2596 Int) ) (=> (exists ( (x_2597 (P (C Int Int))) ) (and (and (exists ( (x_2598 (P (C Int Int))) ) (and (forall ( (x_2599 Int) (x_2600 Int) ) (= (mem2 x_2600 x_2599 x_2598) (mem2 x_2600 x_2599 x_2597))) (forall ( (x_2601 Int) (x_2602 Int) (x_2603 Int) ) (=> (and  (mem2 x_2601 x_2602 x_2598) (mem2 x_2601 x_2603 x_2598)) (= x_2602 x_2603))) (forall ( (x_2604 Int) ) (= (mem0 x_2604 g_S1_0) (exists ( (x_2605 Int) ) (mem2 x_2604 x_2605 x_2598)))) (forall ( (x_2606 Int) ) (=> (exists ( (x_2607 Int) ) (mem2 x_2607 x_2606 x_2598)) (and (>= x_2606 1) (<= x_2606 x_2596)))))) (forall ( (x_2608 Int) ) (=> (and (>= x_2608 1) (<= x_2608 x_2596)) (exists ( (x_2609 Int) ) (mem2 x_2609 x_2608 x_2597))))) (forall ( (x_2610 Int) (x_2611 Int) (x_2612 Int) ) (=> (and  (mem2 x_2611 x_2610 x_2597) (mem2 x_2612 x_2610 x_2597)) (= x_2611 x_2612))))) (> x_2596 0))))
(assert (forall ((x_2613 Int) ) (=> (exists ( (x_2614 (P (C Int Int))) ) (and (and (exists ( (x_2615 (P (C Int Int))) ) (and (forall ( (x_2616 Int) (x_2617 Int) ) (= (mem2 x_2617 x_2616 x_2615) (mem2 x_2617 x_2616 x_2614))) (forall ( (x_2618 Int) (x_2619 Int) (x_2620 Int) ) (=> (and  (mem2 x_2618 x_2619 x_2615) (mem2 x_2618 x_2620 x_2615)) (= x_2619 x_2620))) (forall ( (x_2621 Int) ) (= (mem0 x_2621 g_S2_1) (exists ( (x_2622 Int) ) (mem2 x_2621 x_2622 x_2615)))) (forall ( (x_2623 Int) ) (=> (exists ( (x_2624 Int) ) (mem2 x_2624 x_2623 x_2615)) (and (>= x_2623 1) (<= x_2623 x_2613)))))) (forall ( (x_2625 Int) ) (=> (and (>= x_2625 1) (<= x_2625 x_2613)) (exists ( (x_2626 Int) ) (mem2 x_2626 x_2625 x_2614))))) (forall ( (x_2627 Int) (x_2628 Int) (x_2629 Int) ) (=> (and  (mem2 x_2628 x_2627 x_2614) (mem2 x_2629 x_2627 x_2614)) (= x_2628 x_2629))))) (> x_2613 1))))
(assert (forall ((x_2630 Int) ) (=> (exists ( (x_2631 (P (C Int Int))) ) (and (and (exists ( (x_2632 (P (C Int Int))) ) (and (forall ( (x_2633 Int) (x_2634 Int) ) (= (mem2 x_2634 x_2633 x_2632) (mem2 x_2634 x_2633 x_2631))) (forall ( (x_2635 Int) (x_2636 Int) (x_2637 Int) ) (=> (and  (mem2 x_2635 x_2636 x_2632) (mem2 x_2635 x_2637 x_2632)) (= x_2636 x_2637))) (forall ( (x_2638 Int) ) (= (mem0 x_2638 g_S3_2) (exists ( (x_2639 Int) ) (mem2 x_2638 x_2639 x_2632)))) (forall ( (x_2640 Int) ) (=> (exists ( (x_2641 Int) ) (mem2 x_2641 x_2640 x_2632)) (and (>= x_2640 1) (<= x_2640 x_2630)))))) (forall ( (x_2642 Int) ) (=> (and (>= x_2642 1) (<= x_2642 x_2630)) (exists ( (x_2643 Int) ) (mem2 x_2643 x_2642 x_2631))))) (forall ( (x_2644 Int) (x_2645 Int) (x_2646 Int) ) (=> (and  (mem2 x_2645 x_2644 x_2631) (mem2 x_2646 x_2644 x_2631)) (= x_2645 x_2646))))) (> x_2630 3))))
(assert (forall ((x_2647 Int) ) (=> (exists ( (x_2648 (P (C Int Int))) ) (and (and (exists ( (x_2649 (P (C Int Int))) ) (and (forall ( (x_2650 Int) (x_2651 Int) ) (= (mem2 x_2651 x_2650 x_2649) (mem2 x_2651 x_2650 x_2648))) (forall ( (x_2652 Int) (x_2653 Int) (x_2654 Int) ) (=> (and  (mem2 x_2652 x_2653 x_2649) (mem2 x_2652 x_2654 x_2649)) (= x_2653 x_2654))) (forall ( (x_2655 Int) ) (= (mem0 x_2655 g_S1_0) (exists ( (x_2656 Int) ) (mem2 x_2655 x_2656 x_2649)))) (forall ( (x_2657 Int) ) (=> (exists ( (x_2658 Int) ) (mem2 x_2658 x_2657 x_2649)) (and (>= x_2657 1) (<= x_2657 x_2647)))))) (forall ( (x_2659 Int) ) (=> (and (>= x_2659 1) (<= x_2659 x_2647)) (exists ( (x_2660 Int) ) (mem2 x_2660 x_2659 x_2648))))) (forall ( (x_2661 Int) (x_2662 Int) (x_2663 Int) ) (=> (and  (mem2 x_2662 x_2661 x_2648) (mem2 x_2663 x_2661 x_2648)) (= x_2662 x_2663))))) (> 0 x_2647))))
(assert (forall ((x_2664 Int) ) (=> (exists ( (x_2665 (P (C Int Int))) ) (and (and (exists ( (x_2666 (P (C Int Int))) ) (and (forall ( (x_2667 Int) (x_2668 Int) ) (= (mem2 x_2668 x_2667 x_2666) (mem2 x_2668 x_2667 x_2665))) (forall ( (x_2669 Int) (x_2670 Int) (x_2671 Int) ) (=> (and  (mem2 x_2669 x_2670 x_2666) (mem2 x_2669 x_2671 x_2666)) (= x_2670 x_2671))) (forall ( (x_2672 Int) ) (= (mem0 x_2672 g_S2_1) (exists ( (x_2673 Int) ) (mem2 x_2672 x_2673 x_2666)))) (forall ( (x_2674 Int) ) (=> (exists ( (x_2675 Int) ) (mem2 x_2675 x_2674 x_2666)) (and (>= x_2674 1) (<= x_2674 x_2664)))))) (forall ( (x_2676 Int) ) (=> (and (>= x_2676 1) (<= x_2676 x_2664)) (exists ( (x_2677 Int) ) (mem2 x_2677 x_2676 x_2665))))) (forall ( (x_2678 Int) (x_2679 Int) (x_2680 Int) ) (=> (and  (mem2 x_2679 x_2678 x_2665) (mem2 x_2680 x_2678 x_2665)) (= x_2679 x_2680))))) (> 1 x_2664))))
(assert (forall ((x_2681 Int) ) (=> (exists ( (x_2682 (P (C Int Int))) ) (and (and (exists ( (x_2683 (P (C Int Int))) ) (and (forall ( (x_2684 Int) (x_2685 Int) ) (= (mem2 x_2685 x_2684 x_2683) (mem2 x_2685 x_2684 x_2682))) (forall ( (x_2686 Int) (x_2687 Int) (x_2688 Int) ) (=> (and  (mem2 x_2686 x_2687 x_2683) (mem2 x_2686 x_2688 x_2683)) (= x_2687 x_2688))) (forall ( (x_2689 Int) ) (= (mem0 x_2689 g_S3_2) (exists ( (x_2690 Int) ) (mem2 x_2689 x_2690 x_2683)))) (forall ( (x_2691 Int) ) (=> (exists ( (x_2692 Int) ) (mem2 x_2692 x_2691 x_2683)) (and (>= x_2691 1) (<= x_2691 x_2681)))))) (forall ( (x_2693 Int) ) (=> (and (>= x_2693 1) (<= x_2693 x_2681)) (exists ( (x_2694 Int) ) (mem2 x_2694 x_2693 x_2682))))) (forall ( (x_2695 Int) (x_2696 Int) (x_2697 Int) ) (=> (and  (mem2 x_2696 x_2695 x_2682) (mem2 x_2697 x_2695 x_2682)) (= x_2696 x_2697))))) (> 3 x_2681))))
(assert (forall ((x_2698 Int)(x_2699 Int) ) (=> (and (exists ( (x_2700 (P (C Int Int))) ) (and (and (exists ( (x_2701 (P (C Int Int))) ) (and (forall ( (x_2702 Int) (x_2703 Int) ) (= (mem2 x_2703 x_2702 x_2701) (mem2 x_2703 x_2702 x_2700))) (forall ( (x_2704 Int) (x_2705 Int) (x_2706 Int) ) (=> (and  (mem2 x_2704 x_2705 x_2701) (mem2 x_2704 x_2706 x_2701)) (= x_2705 x_2706))) (forall ( (x_2707 Int) ) (= (mem0 x_2707 g_S1_0) (exists ( (x_2708 Int) ) (mem2 x_2707 x_2708 x_2701)))) (forall ( (x_2709 Int) ) (=> (exists ( (x_2710 Int) ) (mem2 x_2710 x_2709 x_2701)) (and (>= x_2709 1) (<= x_2709 x_2698)))))) (forall ( (x_2711 Int) ) (=> (and (>= x_2711 1) (<= x_2711 x_2698)) (exists ( (x_2712 Int) ) (mem2 x_2712 x_2711 x_2700))))) (forall ( (x_2713 Int) (x_2714 Int) (x_2715 Int) ) (=> (and  (mem2 x_2714 x_2713 x_2700) (mem2 x_2715 x_2713 x_2700)) (= x_2714 x_2715))))) (exists ( (x_2716 (P (C Int Int))) ) (and (and (exists ( (x_2717 (P (C Int Int))) ) (and (forall ( (x_2718 Int) (x_2719 Int) ) (= (mem2 x_2719 x_2718 x_2717) (mem2 x_2719 x_2718 x_2716))) (forall ( (x_2720 Int) (x_2721 Int) (x_2722 Int) ) (=> (and  (mem2 x_2720 x_2721 x_2717) (mem2 x_2720 x_2722 x_2717)) (= x_2721 x_2722))) (forall ( (x_2723 Int) ) (= (mem0 x_2723 g_S2_1) (exists ( (x_2724 Int) ) (mem2 x_2723 x_2724 x_2717)))) (forall ( (x_2725 Int) ) (=> (exists ( (x_2726 Int) ) (mem2 x_2726 x_2725 x_2717)) (and (>= x_2725 1) (<= x_2725 x_2699)))))) (forall ( (x_2727 Int) ) (=> (and (>= x_2727 1) (<= x_2727 x_2699)) (exists ( (x_2728 Int) ) (mem2 x_2728 x_2727 x_2716))))) (forall ( (x_2729 Int) (x_2730 Int) (x_2731 Int) ) (=> (and  (mem2 x_2730 x_2729 x_2716) (mem2 x_2731 x_2729 x_2716)) (= x_2730 x_2731)))))) (> x_2698 x_2699))))
(assert (forall ((x_2732 Int) ) (=> (and  (mem0 x_2732 g_S2_1) (forall ( (x_2733 Int) ) (=> (mem0 x_2733 g_S2_1) (<= x_2732 x_2733)))) (> x_2732 3))))
(assert (forall ((x_2734 Int) ) (=> (and  (mem0 x_2734 g_S2_1) (forall ( (x_2735 Int) ) (=> (mem0 x_2735 g_S2_1) (>= x_2734 x_2735)))) (> x_2734 1))))
(assert (forall ((x_2736 Int) ) (=> (and  (mem0 x_2736 g_S2_1) (forall ( (x_2737 Int) ) (=> (mem0 x_2737 g_S2_1) (<= x_2736 x_2737)))) (> 1 x_2736))))
(assert (forall ((x_2738 Int) ) (=> (and  (mem0 x_2738 g_S2_1) (forall ( (x_2739 Int) ) (=> (mem0 x_2739 g_S2_1) (>= x_2738 x_2739)))) (> 3 x_2738))))
(assert (forall ((x_2740 Int)(x_2741 Int) ) (=> (and (and  (mem0 x_2740 g_S1_0) (forall ( (x_2742 Int) ) (=> (mem0 x_2742 g_S1_0) (>= x_2740 x_2742)))) (and  (mem0 x_2741 g_S1_0) (forall ( (x_2743 Int) ) (=> (mem0 x_2743 g_S1_0) (<= x_2741 x_2743))))) (> x_2740 x_2741))))
(assert (forall ((x_2744 Int) ) (=> (forall ((x_2745 Int) ) (=> (= x_2745 2) (mem2 x_2745 x_2744 g_rel1_3))) (> x_2744 7))))
(assert (forall ((x_2746 Int) ) (=> (forall ((x_2747 Int) ) (=> (= x_2747 2) (mem2 x_2747 x_2746 g_rel1_3))) (> 7 x_2746))))
(assert (forall ((x_2748 Int) ) (=> (forall ((x_2749 Int) ) (=> (= x_2749 1) (mem2 x_2749 x_2748 g_fun1_4))) (> x_2748 3))))
(assert (forall ((x_2750 Int) ) (=> (forall ((x_2751 Int) ) (=> (= x_2751 1) (mem2 x_2751 x_2750 g_fun1_4))) (> 3 x_2750))))
(assert (forall ((x_2752 Int)(x_2753 Int) ) (=> (and (forall ((x_2754 Int) ) (=> (= x_2754 1) (mem2 x_2754 x_2752 g_fun2_5))) (forall ((x_2755 Int) ) (=> (= x_2755 1) (mem2 x_2755 x_2753 g_fun3_6)))) (> x_2752 x_2753))))
(assert (forall ((x_2756 Int) ) (=> (forall ((x_2757 Int) ) (=> (= x_2757 1) (mem2 x_2757 x_2756 g_ss_7))) (> x_2756 7))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2758 Int) ) (=> (forall ((x_2759 Int) ) (=> (= x_2759 1) (mem2 x_2759 x_2758 g_ss_7))) (> 7 x_2758)))))
(check-sat)
(exit)
