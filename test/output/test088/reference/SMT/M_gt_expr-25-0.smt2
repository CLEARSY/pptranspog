(set-option :print-success false)
(set-logic ALL)
; PO 25 0
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
(assert (forall ((x_2760 (P Int)) ) (=> (forall ( (x_2761 Int) ) (= (mem0 x_2761 x_2760) (exists ( (x_2762 Int) ) (and  (mem0 x_2762 g_S1_0) (= x_2761 x_2762))))) (> (isum x_2760) 0))))
(assert (forall ((x_2763 (P Int)) ) (=> (forall ( (x_2764 Int) ) (= (mem0 x_2764 x_2763) (exists ( (x_2765 Int) ) (and  (mem0 x_2765 g_S2_1) (= x_2764 x_2765))))) (> (isum x_2763) 1))))
(assert (forall ((x_2766 (P Int)) ) (=> (forall ( (x_2767 Int) ) (= (mem0 x_2767 x_2766) (exists ( (x_2768 Int) ) (and  (mem0 x_2768 g_S3_2) (= x_2767 x_2768))))) (> (isum x_2766) 6))))
(assert (forall ((x_2769 (P Int)) ) (=> (forall ( (x_2770 Int) ) (= (mem0 x_2770 x_2769) (exists ( (x_2771 Int) ) (and  (mem0 x_2771 g_S1_0) (= x_2770 x_2771))))) (> (iprod x_2769) 1))))
(assert (forall ((x_2772 (P Int)) ) (=> (forall ( (x_2773 Int) ) (= (mem0 x_2773 x_2772) (exists ( (x_2774 Int) ) (and  (mem0 x_2774 g_S2_1) (= x_2773 x_2774))))) (> (iprod x_2772) 1))))
(assert (forall ((x_2775 (P Int)) ) (=> (forall ( (x_2776 Int) ) (= (mem0 x_2776 x_2775) (exists ( (x_2777 Int) ) (and  (mem0 x_2777 g_S3_2) (= x_2776 x_2777))))) (> (iprod x_2775) 6))))
(assert (forall ((x_2778 Int) ) (=> (exists ( (x_2779 (P (C Int Int))) ) (and (and (exists ( (x_2780 (P (C Int Int))) ) (and (forall ( (x_2781 Int) (x_2782 Int) ) (= (mem2 x_2782 x_2781 x_2780) (mem2 x_2782 x_2781 x_2779))) (forall ( (x_2783 Int) (x_2784 Int) (x_2785 Int) ) (=> (and  (mem2 x_2783 x_2784 x_2780) (mem2 x_2783 x_2785 x_2780)) (= x_2784 x_2785))) (forall ( (x_2786 Int) ) (= (mem0 x_2786 g_S1_0) (exists ( (x_2787 Int) ) (mem2 x_2786 x_2787 x_2780)))) (forall ( (x_2788 Int) ) (=> (exists ( (x_2789 Int) ) (mem2 x_2789 x_2788 x_2780)) (and (>= x_2788 1) (<= x_2788 x_2778)))))) (forall ( (x_2790 Int) ) (=> (and (>= x_2790 1) (<= x_2790 x_2778)) (exists ( (x_2791 Int) ) (mem2 x_2791 x_2790 x_2779))))) (forall ( (x_2792 Int) (x_2793 Int) (x_2794 Int) ) (=> (and  (mem2 x_2793 x_2792 x_2779) (mem2 x_2794 x_2792 x_2779)) (= x_2793 x_2794))))) (> x_2778 0))))
(assert (forall ((x_2795 Int) ) (=> (exists ( (x_2796 (P (C Int Int))) ) (and (and (exists ( (x_2797 (P (C Int Int))) ) (and (forall ( (x_2798 Int) (x_2799 Int) ) (= (mem2 x_2799 x_2798 x_2797) (mem2 x_2799 x_2798 x_2796))) (forall ( (x_2800 Int) (x_2801 Int) (x_2802 Int) ) (=> (and  (mem2 x_2800 x_2801 x_2797) (mem2 x_2800 x_2802 x_2797)) (= x_2801 x_2802))) (forall ( (x_2803 Int) ) (= (mem0 x_2803 g_S2_1) (exists ( (x_2804 Int) ) (mem2 x_2803 x_2804 x_2797)))) (forall ( (x_2805 Int) ) (=> (exists ( (x_2806 Int) ) (mem2 x_2806 x_2805 x_2797)) (and (>= x_2805 1) (<= x_2805 x_2795)))))) (forall ( (x_2807 Int) ) (=> (and (>= x_2807 1) (<= x_2807 x_2795)) (exists ( (x_2808 Int) ) (mem2 x_2808 x_2807 x_2796))))) (forall ( (x_2809 Int) (x_2810 Int) (x_2811 Int) ) (=> (and  (mem2 x_2810 x_2809 x_2796) (mem2 x_2811 x_2809 x_2796)) (= x_2810 x_2811))))) (> x_2795 1))))
(assert (forall ((x_2812 Int) ) (=> (exists ( (x_2813 (P (C Int Int))) ) (and (and (exists ( (x_2814 (P (C Int Int))) ) (and (forall ( (x_2815 Int) (x_2816 Int) ) (= (mem2 x_2816 x_2815 x_2814) (mem2 x_2816 x_2815 x_2813))) (forall ( (x_2817 Int) (x_2818 Int) (x_2819 Int) ) (=> (and  (mem2 x_2817 x_2818 x_2814) (mem2 x_2817 x_2819 x_2814)) (= x_2818 x_2819))) (forall ( (x_2820 Int) ) (= (mem0 x_2820 g_S3_2) (exists ( (x_2821 Int) ) (mem2 x_2820 x_2821 x_2814)))) (forall ( (x_2822 Int) ) (=> (exists ( (x_2823 Int) ) (mem2 x_2823 x_2822 x_2814)) (and (>= x_2822 1) (<= x_2822 x_2812)))))) (forall ( (x_2824 Int) ) (=> (and (>= x_2824 1) (<= x_2824 x_2812)) (exists ( (x_2825 Int) ) (mem2 x_2825 x_2824 x_2813))))) (forall ( (x_2826 Int) (x_2827 Int) (x_2828 Int) ) (=> (and  (mem2 x_2827 x_2826 x_2813) (mem2 x_2828 x_2826 x_2813)) (= x_2827 x_2828))))) (> x_2812 3))))
(assert (forall ((x_2829 Int) ) (=> (exists ( (x_2830 (P (C Int Int))) ) (and (and (exists ( (x_2831 (P (C Int Int))) ) (and (forall ( (x_2832 Int) (x_2833 Int) ) (= (mem2 x_2833 x_2832 x_2831) (mem2 x_2833 x_2832 x_2830))) (forall ( (x_2834 Int) (x_2835 Int) (x_2836 Int) ) (=> (and  (mem2 x_2834 x_2835 x_2831) (mem2 x_2834 x_2836 x_2831)) (= x_2835 x_2836))) (forall ( (x_2837 Int) ) (= (mem0 x_2837 g_S1_0) (exists ( (x_2838 Int) ) (mem2 x_2837 x_2838 x_2831)))) (forall ( (x_2839 Int) ) (=> (exists ( (x_2840 Int) ) (mem2 x_2840 x_2839 x_2831)) (and (>= x_2839 1) (<= x_2839 x_2829)))))) (forall ( (x_2841 Int) ) (=> (and (>= x_2841 1) (<= x_2841 x_2829)) (exists ( (x_2842 Int) ) (mem2 x_2842 x_2841 x_2830))))) (forall ( (x_2843 Int) (x_2844 Int) (x_2845 Int) ) (=> (and  (mem2 x_2844 x_2843 x_2830) (mem2 x_2845 x_2843 x_2830)) (= x_2844 x_2845))))) (> 0 x_2829))))
(assert (forall ((x_2846 Int) ) (=> (exists ( (x_2847 (P (C Int Int))) ) (and (and (exists ( (x_2848 (P (C Int Int))) ) (and (forall ( (x_2849 Int) (x_2850 Int) ) (= (mem2 x_2850 x_2849 x_2848) (mem2 x_2850 x_2849 x_2847))) (forall ( (x_2851 Int) (x_2852 Int) (x_2853 Int) ) (=> (and  (mem2 x_2851 x_2852 x_2848) (mem2 x_2851 x_2853 x_2848)) (= x_2852 x_2853))) (forall ( (x_2854 Int) ) (= (mem0 x_2854 g_S2_1) (exists ( (x_2855 Int) ) (mem2 x_2854 x_2855 x_2848)))) (forall ( (x_2856 Int) ) (=> (exists ( (x_2857 Int) ) (mem2 x_2857 x_2856 x_2848)) (and (>= x_2856 1) (<= x_2856 x_2846)))))) (forall ( (x_2858 Int) ) (=> (and (>= x_2858 1) (<= x_2858 x_2846)) (exists ( (x_2859 Int) ) (mem2 x_2859 x_2858 x_2847))))) (forall ( (x_2860 Int) (x_2861 Int) (x_2862 Int) ) (=> (and  (mem2 x_2861 x_2860 x_2847) (mem2 x_2862 x_2860 x_2847)) (= x_2861 x_2862))))) (> 1 x_2846))))
(assert (forall ((x_2863 Int) ) (=> (exists ( (x_2864 (P (C Int Int))) ) (and (and (exists ( (x_2865 (P (C Int Int))) ) (and (forall ( (x_2866 Int) (x_2867 Int) ) (= (mem2 x_2867 x_2866 x_2865) (mem2 x_2867 x_2866 x_2864))) (forall ( (x_2868 Int) (x_2869 Int) (x_2870 Int) ) (=> (and  (mem2 x_2868 x_2869 x_2865) (mem2 x_2868 x_2870 x_2865)) (= x_2869 x_2870))) (forall ( (x_2871 Int) ) (= (mem0 x_2871 g_S3_2) (exists ( (x_2872 Int) ) (mem2 x_2871 x_2872 x_2865)))) (forall ( (x_2873 Int) ) (=> (exists ( (x_2874 Int) ) (mem2 x_2874 x_2873 x_2865)) (and (>= x_2873 1) (<= x_2873 x_2863)))))) (forall ( (x_2875 Int) ) (=> (and (>= x_2875 1) (<= x_2875 x_2863)) (exists ( (x_2876 Int) ) (mem2 x_2876 x_2875 x_2864))))) (forall ( (x_2877 Int) (x_2878 Int) (x_2879 Int) ) (=> (and  (mem2 x_2878 x_2877 x_2864) (mem2 x_2879 x_2877 x_2864)) (= x_2878 x_2879))))) (> 3 x_2863))))
(assert (forall ((x_2880 Int)(x_2881 Int) ) (=> (and (exists ( (x_2882 (P (C Int Int))) ) (and (and (exists ( (x_2883 (P (C Int Int))) ) (and (forall ( (x_2884 Int) (x_2885 Int) ) (= (mem2 x_2885 x_2884 x_2883) (mem2 x_2885 x_2884 x_2882))) (forall ( (x_2886 Int) (x_2887 Int) (x_2888 Int) ) (=> (and  (mem2 x_2886 x_2887 x_2883) (mem2 x_2886 x_2888 x_2883)) (= x_2887 x_2888))) (forall ( (x_2889 Int) ) (= (mem0 x_2889 g_S1_0) (exists ( (x_2890 Int) ) (mem2 x_2889 x_2890 x_2883)))) (forall ( (x_2891 Int) ) (=> (exists ( (x_2892 Int) ) (mem2 x_2892 x_2891 x_2883)) (and (>= x_2891 1) (<= x_2891 x_2880)))))) (forall ( (x_2893 Int) ) (=> (and (>= x_2893 1) (<= x_2893 x_2880)) (exists ( (x_2894 Int) ) (mem2 x_2894 x_2893 x_2882))))) (forall ( (x_2895 Int) (x_2896 Int) (x_2897 Int) ) (=> (and  (mem2 x_2896 x_2895 x_2882) (mem2 x_2897 x_2895 x_2882)) (= x_2896 x_2897))))) (exists ( (x_2898 (P (C Int Int))) ) (and (and (exists ( (x_2899 (P (C Int Int))) ) (and (forall ( (x_2900 Int) (x_2901 Int) ) (= (mem2 x_2901 x_2900 x_2899) (mem2 x_2901 x_2900 x_2898))) (forall ( (x_2902 Int) (x_2903 Int) (x_2904 Int) ) (=> (and  (mem2 x_2902 x_2903 x_2899) (mem2 x_2902 x_2904 x_2899)) (= x_2903 x_2904))) (forall ( (x_2905 Int) ) (= (mem0 x_2905 g_S2_1) (exists ( (x_2906 Int) ) (mem2 x_2905 x_2906 x_2899)))) (forall ( (x_2907 Int) ) (=> (exists ( (x_2908 Int) ) (mem2 x_2908 x_2907 x_2899)) (and (>= x_2907 1) (<= x_2907 x_2881)))))) (forall ( (x_2909 Int) ) (=> (and (>= x_2909 1) (<= x_2909 x_2881)) (exists ( (x_2910 Int) ) (mem2 x_2910 x_2909 x_2898))))) (forall ( (x_2911 Int) (x_2912 Int) (x_2913 Int) ) (=> (and  (mem2 x_2912 x_2911 x_2898) (mem2 x_2913 x_2911 x_2898)) (= x_2912 x_2913)))))) (> x_2880 x_2881))))
(assert (forall ((x_2914 Int) ) (=> (and  (mem0 x_2914 g_S2_1) (forall ( (x_2915 Int) ) (=> (mem0 x_2915 g_S2_1) (<= x_2914 x_2915)))) (> x_2914 3))))
(assert (forall ((x_2916 Int) ) (=> (and  (mem0 x_2916 g_S2_1) (forall ( (x_2917 Int) ) (=> (mem0 x_2917 g_S2_1) (>= x_2916 x_2917)))) (> x_2916 1))))
(assert (forall ((x_2918 Int) ) (=> (and  (mem0 x_2918 g_S2_1) (forall ( (x_2919 Int) ) (=> (mem0 x_2919 g_S2_1) (<= x_2918 x_2919)))) (> 1 x_2918))))
(assert (forall ((x_2920 Int) ) (=> (and  (mem0 x_2920 g_S2_1) (forall ( (x_2921 Int) ) (=> (mem0 x_2921 g_S2_1) (>= x_2920 x_2921)))) (> 3 x_2920))))
(assert (forall ((x_2922 Int)(x_2923 Int) ) (=> (and (and  (mem0 x_2922 g_S1_0) (forall ( (x_2924 Int) ) (=> (mem0 x_2924 g_S1_0) (>= x_2922 x_2924)))) (and  (mem0 x_2923 g_S1_0) (forall ( (x_2925 Int) ) (=> (mem0 x_2925 g_S1_0) (<= x_2923 x_2925))))) (> x_2922 x_2923))))
(assert (forall ((x_2926 Int) ) (=> (forall ((x_2927 Int) ) (=> (= x_2927 2) (mem2 x_2927 x_2926 g_rel1_3))) (> x_2926 7))))
(assert (forall ((x_2928 Int) ) (=> (forall ((x_2929 Int) ) (=> (= x_2929 2) (mem2 x_2929 x_2928 g_rel1_3))) (> 7 x_2928))))
(assert (forall ((x_2930 Int) ) (=> (forall ((x_2931 Int) ) (=> (= x_2931 1) (mem2 x_2931 x_2930 g_fun1_4))) (> x_2930 3))))
(assert (forall ((x_2932 Int) ) (=> (forall ((x_2933 Int) ) (=> (= x_2933 1) (mem2 x_2933 x_2932 g_fun1_4))) (> 3 x_2932))))
(assert (forall ((x_2934 Int)(x_2935 Int) ) (=> (and (forall ((x_2936 Int) ) (=> (= x_2936 1) (mem2 x_2936 x_2934 g_fun2_5))) (forall ((x_2937 Int) ) (=> (= x_2937 1) (mem2 x_2937 x_2935 g_fun3_6)))) (> x_2934 x_2935))))
(assert (forall ((x_2938 Int) ) (=> (forall ((x_2939 Int) ) (=> (= x_2939 1) (mem2 x_2939 x_2938 g_ss_7))) (> x_2938 7))))
(assert (forall ((x_2940 Int) ) (=> (forall ((x_2941 Int) ) (=> (= x_2941 1) (mem2 x_2941 x_2940 g_ss_7))) (> 7 x_2940))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2942 Int) ) (=> (forall ((x_2943 Int) ) (=> (forall ( (x_2944 Int) ) (= (exists ( (x_2945 Int) ) (mem2 x_2944 x_2945 g_ss_7)) (and (>= x_2944 1) (<= x_2944 x_2943)))) (mem2 x_2943 x_2942 g_ss_7))) (> x_2942 21)))))
(check-sat)
(exit)
