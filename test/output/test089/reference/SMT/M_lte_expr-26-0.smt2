(set-option :print-success false)
(set-logic ALL)
; PO 26 0
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
(assert (forall ((x_2946 (P Int)) ) (=> (forall ( (x_2947 Int) ) (= (mem0 x_2947 x_2946) (exists ( (x_2948 Int) ) (and  (mem0 x_2948 g_S1_0) (= x_2947 x_2948))))) (<= (isum x_2946) 0))))
(assert (forall ((x_2949 (P Int)) ) (=> (forall ( (x_2950 Int) ) (= (mem0 x_2950 x_2949) (exists ( (x_2951 Int) ) (and  (mem0 x_2951 g_S2_1) (= x_2950 x_2951))))) (<= (isum x_2949) 1))))
(assert (forall ((x_2952 (P Int)) ) (=> (forall ( (x_2953 Int) ) (= (mem0 x_2953 x_2952) (exists ( (x_2954 Int) ) (and  (mem0 x_2954 g_S3_2) (= x_2953 x_2954))))) (<= (isum x_2952) 6))))
(assert (forall ((x_2955 (P Int)) ) (=> (forall ( (x_2956 Int) ) (= (mem0 x_2956 x_2955) (exists ( (x_2957 Int) ) (and  (mem0 x_2957 g_S1_0) (= x_2956 x_2957))))) (<= (iprod x_2955) 1))))
(assert (forall ((x_2958 (P Int)) ) (=> (forall ( (x_2959 Int) ) (= (mem0 x_2959 x_2958) (exists ( (x_2960 Int) ) (and  (mem0 x_2960 g_S2_1) (= x_2959 x_2960))))) (<= (iprod x_2958) 1))))
(assert (forall ((x_2961 (P Int)) ) (=> (forall ( (x_2962 Int) ) (= (mem0 x_2962 x_2961) (exists ( (x_2963 Int) ) (and  (mem0 x_2963 g_S3_2) (= x_2962 x_2963))))) (<= (iprod x_2961) 6))))
(assert (forall ((x_2964 Int) ) (=> (exists ( (x_2965 (P (C Int Int))) ) (and (and (exists ( (x_2966 (P (C Int Int))) ) (and (forall ( (x_2967 Int) (x_2968 Int) ) (= (mem2 x_2968 x_2967 x_2966) (mem2 x_2968 x_2967 x_2965))) (forall ( (x_2969 Int) (x_2970 Int) (x_2971 Int) ) (=> (and  (mem2 x_2969 x_2970 x_2966) (mem2 x_2969 x_2971 x_2966)) (= x_2970 x_2971))) (forall ( (x_2972 Int) ) (= (mem0 x_2972 g_S1_0) (exists ( (x_2973 Int) ) (mem2 x_2972 x_2973 x_2966)))) (forall ( (x_2974 Int) ) (=> (exists ( (x_2975 Int) ) (mem2 x_2975 x_2974 x_2966)) (and (>= x_2974 1) (<= x_2974 x_2964)))))) (forall ( (x_2976 Int) ) (=> (and (>= x_2976 1) (<= x_2976 x_2964)) (exists ( (x_2977 Int) ) (mem2 x_2977 x_2976 x_2965))))) (forall ( (x_2978 Int) (x_2979 Int) (x_2980 Int) ) (=> (and  (mem2 x_2979 x_2978 x_2965) (mem2 x_2980 x_2978 x_2965)) (= x_2979 x_2980))))) (<= x_2964 0))))
(assert (forall ((x_2981 Int) ) (=> (exists ( (x_2982 (P (C Int Int))) ) (and (and (exists ( (x_2983 (P (C Int Int))) ) (and (forall ( (x_2984 Int) (x_2985 Int) ) (= (mem2 x_2985 x_2984 x_2983) (mem2 x_2985 x_2984 x_2982))) (forall ( (x_2986 Int) (x_2987 Int) (x_2988 Int) ) (=> (and  (mem2 x_2986 x_2987 x_2983) (mem2 x_2986 x_2988 x_2983)) (= x_2987 x_2988))) (forall ( (x_2989 Int) ) (= (mem0 x_2989 g_S2_1) (exists ( (x_2990 Int) ) (mem2 x_2989 x_2990 x_2983)))) (forall ( (x_2991 Int) ) (=> (exists ( (x_2992 Int) ) (mem2 x_2992 x_2991 x_2983)) (and (>= x_2991 1) (<= x_2991 x_2981)))))) (forall ( (x_2993 Int) ) (=> (and (>= x_2993 1) (<= x_2993 x_2981)) (exists ( (x_2994 Int) ) (mem2 x_2994 x_2993 x_2982))))) (forall ( (x_2995 Int) (x_2996 Int) (x_2997 Int) ) (=> (and  (mem2 x_2996 x_2995 x_2982) (mem2 x_2997 x_2995 x_2982)) (= x_2996 x_2997))))) (<= x_2981 1))))
(assert (forall ((x_2998 Int) ) (=> (exists ( (x_2999 (P (C Int Int))) ) (and (and (exists ( (x_3000 (P (C Int Int))) ) (and (forall ( (x_3001 Int) (x_3002 Int) ) (= (mem2 x_3002 x_3001 x_3000) (mem2 x_3002 x_3001 x_2999))) (forall ( (x_3003 Int) (x_3004 Int) (x_3005 Int) ) (=> (and  (mem2 x_3003 x_3004 x_3000) (mem2 x_3003 x_3005 x_3000)) (= x_3004 x_3005))) (forall ( (x_3006 Int) ) (= (mem0 x_3006 g_S3_2) (exists ( (x_3007 Int) ) (mem2 x_3006 x_3007 x_3000)))) (forall ( (x_3008 Int) ) (=> (exists ( (x_3009 Int) ) (mem2 x_3009 x_3008 x_3000)) (and (>= x_3008 1) (<= x_3008 x_2998)))))) (forall ( (x_3010 Int) ) (=> (and (>= x_3010 1) (<= x_3010 x_2998)) (exists ( (x_3011 Int) ) (mem2 x_3011 x_3010 x_2999))))) (forall ( (x_3012 Int) (x_3013 Int) (x_3014 Int) ) (=> (and  (mem2 x_3013 x_3012 x_2999) (mem2 x_3014 x_3012 x_2999)) (= x_3013 x_3014))))) (<= x_2998 3))))
(assert (forall ((x_3015 Int) ) (=> (exists ( (x_3016 (P (C Int Int))) ) (and (and (exists ( (x_3017 (P (C Int Int))) ) (and (forall ( (x_3018 Int) (x_3019 Int) ) (= (mem2 x_3019 x_3018 x_3017) (mem2 x_3019 x_3018 x_3016))) (forall ( (x_3020 Int) (x_3021 Int) (x_3022 Int) ) (=> (and  (mem2 x_3020 x_3021 x_3017) (mem2 x_3020 x_3022 x_3017)) (= x_3021 x_3022))) (forall ( (x_3023 Int) ) (= (mem0 x_3023 g_S1_0) (exists ( (x_3024 Int) ) (mem2 x_3023 x_3024 x_3017)))) (forall ( (x_3025 Int) ) (=> (exists ( (x_3026 Int) ) (mem2 x_3026 x_3025 x_3017)) (and (>= x_3025 1) (<= x_3025 x_3015)))))) (forall ( (x_3027 Int) ) (=> (and (>= x_3027 1) (<= x_3027 x_3015)) (exists ( (x_3028 Int) ) (mem2 x_3028 x_3027 x_3016))))) (forall ( (x_3029 Int) (x_3030 Int) (x_3031 Int) ) (=> (and  (mem2 x_3030 x_3029 x_3016) (mem2 x_3031 x_3029 x_3016)) (= x_3030 x_3031))))) (<= 0 x_3015))))
(assert (forall ((x_3032 Int) ) (=> (exists ( (x_3033 (P (C Int Int))) ) (and (and (exists ( (x_3034 (P (C Int Int))) ) (and (forall ( (x_3035 Int) (x_3036 Int) ) (= (mem2 x_3036 x_3035 x_3034) (mem2 x_3036 x_3035 x_3033))) (forall ( (x_3037 Int) (x_3038 Int) (x_3039 Int) ) (=> (and  (mem2 x_3037 x_3038 x_3034) (mem2 x_3037 x_3039 x_3034)) (= x_3038 x_3039))) (forall ( (x_3040 Int) ) (= (mem0 x_3040 g_S2_1) (exists ( (x_3041 Int) ) (mem2 x_3040 x_3041 x_3034)))) (forall ( (x_3042 Int) ) (=> (exists ( (x_3043 Int) ) (mem2 x_3043 x_3042 x_3034)) (and (>= x_3042 1) (<= x_3042 x_3032)))))) (forall ( (x_3044 Int) ) (=> (and (>= x_3044 1) (<= x_3044 x_3032)) (exists ( (x_3045 Int) ) (mem2 x_3045 x_3044 x_3033))))) (forall ( (x_3046 Int) (x_3047 Int) (x_3048 Int) ) (=> (and  (mem2 x_3047 x_3046 x_3033) (mem2 x_3048 x_3046 x_3033)) (= x_3047 x_3048))))) (<= 1 x_3032))))
(assert (forall ((x_3049 Int) ) (=> (exists ( (x_3050 (P (C Int Int))) ) (and (and (exists ( (x_3051 (P (C Int Int))) ) (and (forall ( (x_3052 Int) (x_3053 Int) ) (= (mem2 x_3053 x_3052 x_3051) (mem2 x_3053 x_3052 x_3050))) (forall ( (x_3054 Int) (x_3055 Int) (x_3056 Int) ) (=> (and  (mem2 x_3054 x_3055 x_3051) (mem2 x_3054 x_3056 x_3051)) (= x_3055 x_3056))) (forall ( (x_3057 Int) ) (= (mem0 x_3057 g_S3_2) (exists ( (x_3058 Int) ) (mem2 x_3057 x_3058 x_3051)))) (forall ( (x_3059 Int) ) (=> (exists ( (x_3060 Int) ) (mem2 x_3060 x_3059 x_3051)) (and (>= x_3059 1) (<= x_3059 x_3049)))))) (forall ( (x_3061 Int) ) (=> (and (>= x_3061 1) (<= x_3061 x_3049)) (exists ( (x_3062 Int) ) (mem2 x_3062 x_3061 x_3050))))) (forall ( (x_3063 Int) (x_3064 Int) (x_3065 Int) ) (=> (and  (mem2 x_3064 x_3063 x_3050) (mem2 x_3065 x_3063 x_3050)) (= x_3064 x_3065))))) (<= 3 x_3049))))
(assert (forall ((x_3066 Int)(x_3067 Int) ) (=> (and (exists ( (x_3068 (P (C Int Int))) ) (and (and (exists ( (x_3069 (P (C Int Int))) ) (and (forall ( (x_3070 Int) (x_3071 Int) ) (= (mem2 x_3071 x_3070 x_3069) (mem2 x_3071 x_3070 x_3068))) (forall ( (x_3072 Int) (x_3073 Int) (x_3074 Int) ) (=> (and  (mem2 x_3072 x_3073 x_3069) (mem2 x_3072 x_3074 x_3069)) (= x_3073 x_3074))) (forall ( (x_3075 Int) ) (= (mem0 x_3075 g_S1_0) (exists ( (x_3076 Int) ) (mem2 x_3075 x_3076 x_3069)))) (forall ( (x_3077 Int) ) (=> (exists ( (x_3078 Int) ) (mem2 x_3078 x_3077 x_3069)) (and (>= x_3077 1) (<= x_3077 x_3066)))))) (forall ( (x_3079 Int) ) (=> (and (>= x_3079 1) (<= x_3079 x_3066)) (exists ( (x_3080 Int) ) (mem2 x_3080 x_3079 x_3068))))) (forall ( (x_3081 Int) (x_3082 Int) (x_3083 Int) ) (=> (and  (mem2 x_3082 x_3081 x_3068) (mem2 x_3083 x_3081 x_3068)) (= x_3082 x_3083))))) (exists ( (x_3084 (P (C Int Int))) ) (and (and (exists ( (x_3085 (P (C Int Int))) ) (and (forall ( (x_3086 Int) (x_3087 Int) ) (= (mem2 x_3087 x_3086 x_3085) (mem2 x_3087 x_3086 x_3084))) (forall ( (x_3088 Int) (x_3089 Int) (x_3090 Int) ) (=> (and  (mem2 x_3088 x_3089 x_3085) (mem2 x_3088 x_3090 x_3085)) (= x_3089 x_3090))) (forall ( (x_3091 Int) ) (= (mem0 x_3091 g_S2_1) (exists ( (x_3092 Int) ) (mem2 x_3091 x_3092 x_3085)))) (forall ( (x_3093 Int) ) (=> (exists ( (x_3094 Int) ) (mem2 x_3094 x_3093 x_3085)) (and (>= x_3093 1) (<= x_3093 x_3067)))))) (forall ( (x_3095 Int) ) (=> (and (>= x_3095 1) (<= x_3095 x_3067)) (exists ( (x_3096 Int) ) (mem2 x_3096 x_3095 x_3084))))) (forall ( (x_3097 Int) (x_3098 Int) (x_3099 Int) ) (=> (and  (mem2 x_3098 x_3097 x_3084) (mem2 x_3099 x_3097 x_3084)) (= x_3098 x_3099)))))) (<= x_3066 x_3067))))
(assert (forall ((x_3100 Int) ) (=> (and  (mem0 x_3100 g_S2_1) (forall ( (x_3101 Int) ) (=> (mem0 x_3101 g_S2_1) (<= x_3100 x_3101)))) (<= x_3100 3))))
(assert (forall ((x_3102 Int) ) (=> (and  (mem0 x_3102 g_S2_1) (forall ( (x_3103 Int) ) (=> (mem0 x_3103 g_S2_1) (>= x_3102 x_3103)))) (<= x_3102 1))))
(assert (forall ((x_3104 Int) ) (=> (and  (mem0 x_3104 g_S2_1) (forall ( (x_3105 Int) ) (=> (mem0 x_3105 g_S2_1) (<= x_3104 x_3105)))) (<= 1 x_3104))))
(assert (forall ((x_3106 Int) ) (=> (and  (mem0 x_3106 g_S2_1) (forall ( (x_3107 Int) ) (=> (mem0 x_3107 g_S2_1) (>= x_3106 x_3107)))) (<= 3 x_3106))))
(assert (forall ((x_3108 Int)(x_3109 Int) ) (=> (and (and  (mem0 x_3108 g_S1_0) (forall ( (x_3110 Int) ) (=> (mem0 x_3110 g_S1_0) (>= x_3108 x_3110)))) (and  (mem0 x_3109 g_S1_0) (forall ( (x_3111 Int) ) (=> (mem0 x_3111 g_S1_0) (<= x_3109 x_3111))))) (<= x_3108 x_3109))))
(assert (forall ((x_3112 Int) ) (=> (forall ((x_3113 Int) ) (=> (= x_3113 2) (mem2 x_3113 x_3112 g_rel1_3))) (<= x_3112 7))))
(assert (forall ((x_3114 Int) ) (=> (forall ((x_3115 Int) ) (=> (= x_3115 2) (mem2 x_3115 x_3114 g_rel1_3))) (<= 7 x_3114))))
(assert (forall ((x_3116 Int) ) (=> (forall ((x_3117 Int) ) (=> (= x_3117 1) (mem2 x_3117 x_3116 g_fun1_4))) (<= x_3116 3))))
(assert (forall ((x_3118 Int) ) (=> (forall ((x_3119 Int) ) (=> (= x_3119 1) (mem2 x_3119 x_3118 g_fun1_4))) (<= 3 x_3118))))
(assert (forall ((x_3120 Int)(x_3121 Int) ) (=> (and (forall ((x_3122 Int) ) (=> (= x_3122 1) (mem2 x_3122 x_3120 g_fun2_5))) (forall ((x_3123 Int) ) (=> (= x_3123 1) (mem2 x_3123 x_3121 g_fun3_6)))) (<= x_3120 x_3121))))
(assert (forall ((x_3124 Int) ) (=> (forall ((x_3125 Int) ) (=> (= x_3125 1) (mem2 x_3125 x_3124 g_ss_7))) (<= x_3124 7))))
(assert (forall ((x_3126 Int) ) (=> (forall ((x_3127 Int) ) (=> (= x_3127 1) (mem2 x_3127 x_3126 g_ss_7))) (<= 7 x_3126))))
(assert (forall ((x_3128 Int) ) (=> (forall ((x_3129 Int) ) (=> (forall ( (x_3130 Int) ) (= (exists ( (x_3131 Int) ) (mem2 x_3130 x_3131 g_ss_7)) (and (>= x_3130 1) (<= x_3130 x_3129)))) (mem2 x_3129 x_3128 g_ss_7))) (<= x_3128 21))))
; Local hypotheses
; Goal
(assert (not (forall ((x_3132 Int) ) (=> (forall ((x_3133 Int) ) (=> (forall ( (x_3134 Int) ) (= (exists ( (x_3135 Int) ) (mem2 x_3134 x_3135 g_ss_7)) (and (>= x_3134 1) (<= x_3134 x_3133)))) (mem2 x_3133 x_3132 g_ss_7))) (<= 21 x_3132)))))
(check-sat)
(exit)
