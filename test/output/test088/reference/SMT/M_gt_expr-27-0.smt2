(set-option :print-success false)
(set-logic ALL)
; PO 27 0
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
(assert (forall ((x_3136 (P Int)) ) (=> (forall ( (x_3137 Int) ) (= (mem0 x_3137 x_3136) (exists ( (x_3138 Int) ) (and  (mem0 x_3138 g_S1_0) (= x_3137 x_3138))))) (> (isum x_3136) 0))))
(assert (forall ((x_3139 (P Int)) ) (=> (forall ( (x_3140 Int) ) (= (mem0 x_3140 x_3139) (exists ( (x_3141 Int) ) (and  (mem0 x_3141 g_S2_1) (= x_3140 x_3141))))) (> (isum x_3139) 1))))
(assert (forall ((x_3142 (P Int)) ) (=> (forall ( (x_3143 Int) ) (= (mem0 x_3143 x_3142) (exists ( (x_3144 Int) ) (and  (mem0 x_3144 g_S3_2) (= x_3143 x_3144))))) (> (isum x_3142) 6))))
(assert (forall ((x_3145 (P Int)) ) (=> (forall ( (x_3146 Int) ) (= (mem0 x_3146 x_3145) (exists ( (x_3147 Int) ) (and  (mem0 x_3147 g_S1_0) (= x_3146 x_3147))))) (> (iprod x_3145) 1))))
(assert (forall ((x_3148 (P Int)) ) (=> (forall ( (x_3149 Int) ) (= (mem0 x_3149 x_3148) (exists ( (x_3150 Int) ) (and  (mem0 x_3150 g_S2_1) (= x_3149 x_3150))))) (> (iprod x_3148) 1))))
(assert (forall ((x_3151 (P Int)) ) (=> (forall ( (x_3152 Int) ) (= (mem0 x_3152 x_3151) (exists ( (x_3153 Int) ) (and  (mem0 x_3153 g_S3_2) (= x_3152 x_3153))))) (> (iprod x_3151) 6))))
(assert (forall ((x_3154 Int) ) (=> (exists ( (x_3155 (P (C Int Int))) ) (and (and (exists ( (x_3156 (P (C Int Int))) ) (and (forall ( (x_3157 Int) (x_3158 Int) ) (= (mem2 x_3158 x_3157 x_3156) (mem2 x_3158 x_3157 x_3155))) (forall ( (x_3159 Int) (x_3160 Int) (x_3161 Int) ) (=> (and  (mem2 x_3159 x_3160 x_3156) (mem2 x_3159 x_3161 x_3156)) (= x_3160 x_3161))) (forall ( (x_3162 Int) ) (= (mem0 x_3162 g_S1_0) (exists ( (x_3163 Int) ) (mem2 x_3162 x_3163 x_3156)))) (forall ( (x_3164 Int) ) (=> (exists ( (x_3165 Int) ) (mem2 x_3165 x_3164 x_3156)) (and (>= x_3164 1) (<= x_3164 x_3154)))))) (forall ( (x_3166 Int) ) (=> (and (>= x_3166 1) (<= x_3166 x_3154)) (exists ( (x_3167 Int) ) (mem2 x_3167 x_3166 x_3155))))) (forall ( (x_3168 Int) (x_3169 Int) (x_3170 Int) ) (=> (and  (mem2 x_3169 x_3168 x_3155) (mem2 x_3170 x_3168 x_3155)) (= x_3169 x_3170))))) (> x_3154 0))))
(assert (forall ((x_3171 Int) ) (=> (exists ( (x_3172 (P (C Int Int))) ) (and (and (exists ( (x_3173 (P (C Int Int))) ) (and (forall ( (x_3174 Int) (x_3175 Int) ) (= (mem2 x_3175 x_3174 x_3173) (mem2 x_3175 x_3174 x_3172))) (forall ( (x_3176 Int) (x_3177 Int) (x_3178 Int) ) (=> (and  (mem2 x_3176 x_3177 x_3173) (mem2 x_3176 x_3178 x_3173)) (= x_3177 x_3178))) (forall ( (x_3179 Int) ) (= (mem0 x_3179 g_S2_1) (exists ( (x_3180 Int) ) (mem2 x_3179 x_3180 x_3173)))) (forall ( (x_3181 Int) ) (=> (exists ( (x_3182 Int) ) (mem2 x_3182 x_3181 x_3173)) (and (>= x_3181 1) (<= x_3181 x_3171)))))) (forall ( (x_3183 Int) ) (=> (and (>= x_3183 1) (<= x_3183 x_3171)) (exists ( (x_3184 Int) ) (mem2 x_3184 x_3183 x_3172))))) (forall ( (x_3185 Int) (x_3186 Int) (x_3187 Int) ) (=> (and  (mem2 x_3186 x_3185 x_3172) (mem2 x_3187 x_3185 x_3172)) (= x_3186 x_3187))))) (> x_3171 1))))
(assert (forall ((x_3188 Int) ) (=> (exists ( (x_3189 (P (C Int Int))) ) (and (and (exists ( (x_3190 (P (C Int Int))) ) (and (forall ( (x_3191 Int) (x_3192 Int) ) (= (mem2 x_3192 x_3191 x_3190) (mem2 x_3192 x_3191 x_3189))) (forall ( (x_3193 Int) (x_3194 Int) (x_3195 Int) ) (=> (and  (mem2 x_3193 x_3194 x_3190) (mem2 x_3193 x_3195 x_3190)) (= x_3194 x_3195))) (forall ( (x_3196 Int) ) (= (mem0 x_3196 g_S3_2) (exists ( (x_3197 Int) ) (mem2 x_3196 x_3197 x_3190)))) (forall ( (x_3198 Int) ) (=> (exists ( (x_3199 Int) ) (mem2 x_3199 x_3198 x_3190)) (and (>= x_3198 1) (<= x_3198 x_3188)))))) (forall ( (x_3200 Int) ) (=> (and (>= x_3200 1) (<= x_3200 x_3188)) (exists ( (x_3201 Int) ) (mem2 x_3201 x_3200 x_3189))))) (forall ( (x_3202 Int) (x_3203 Int) (x_3204 Int) ) (=> (and  (mem2 x_3203 x_3202 x_3189) (mem2 x_3204 x_3202 x_3189)) (= x_3203 x_3204))))) (> x_3188 3))))
(assert (forall ((x_3205 Int) ) (=> (exists ( (x_3206 (P (C Int Int))) ) (and (and (exists ( (x_3207 (P (C Int Int))) ) (and (forall ( (x_3208 Int) (x_3209 Int) ) (= (mem2 x_3209 x_3208 x_3207) (mem2 x_3209 x_3208 x_3206))) (forall ( (x_3210 Int) (x_3211 Int) (x_3212 Int) ) (=> (and  (mem2 x_3210 x_3211 x_3207) (mem2 x_3210 x_3212 x_3207)) (= x_3211 x_3212))) (forall ( (x_3213 Int) ) (= (mem0 x_3213 g_S1_0) (exists ( (x_3214 Int) ) (mem2 x_3213 x_3214 x_3207)))) (forall ( (x_3215 Int) ) (=> (exists ( (x_3216 Int) ) (mem2 x_3216 x_3215 x_3207)) (and (>= x_3215 1) (<= x_3215 x_3205)))))) (forall ( (x_3217 Int) ) (=> (and (>= x_3217 1) (<= x_3217 x_3205)) (exists ( (x_3218 Int) ) (mem2 x_3218 x_3217 x_3206))))) (forall ( (x_3219 Int) (x_3220 Int) (x_3221 Int) ) (=> (and  (mem2 x_3220 x_3219 x_3206) (mem2 x_3221 x_3219 x_3206)) (= x_3220 x_3221))))) (> 0 x_3205))))
(assert (forall ((x_3222 Int) ) (=> (exists ( (x_3223 (P (C Int Int))) ) (and (and (exists ( (x_3224 (P (C Int Int))) ) (and (forall ( (x_3225 Int) (x_3226 Int) ) (= (mem2 x_3226 x_3225 x_3224) (mem2 x_3226 x_3225 x_3223))) (forall ( (x_3227 Int) (x_3228 Int) (x_3229 Int) ) (=> (and  (mem2 x_3227 x_3228 x_3224) (mem2 x_3227 x_3229 x_3224)) (= x_3228 x_3229))) (forall ( (x_3230 Int) ) (= (mem0 x_3230 g_S2_1) (exists ( (x_3231 Int) ) (mem2 x_3230 x_3231 x_3224)))) (forall ( (x_3232 Int) ) (=> (exists ( (x_3233 Int) ) (mem2 x_3233 x_3232 x_3224)) (and (>= x_3232 1) (<= x_3232 x_3222)))))) (forall ( (x_3234 Int) ) (=> (and (>= x_3234 1) (<= x_3234 x_3222)) (exists ( (x_3235 Int) ) (mem2 x_3235 x_3234 x_3223))))) (forall ( (x_3236 Int) (x_3237 Int) (x_3238 Int) ) (=> (and  (mem2 x_3237 x_3236 x_3223) (mem2 x_3238 x_3236 x_3223)) (= x_3237 x_3238))))) (> 1 x_3222))))
(assert (forall ((x_3239 Int) ) (=> (exists ( (x_3240 (P (C Int Int))) ) (and (and (exists ( (x_3241 (P (C Int Int))) ) (and (forall ( (x_3242 Int) (x_3243 Int) ) (= (mem2 x_3243 x_3242 x_3241) (mem2 x_3243 x_3242 x_3240))) (forall ( (x_3244 Int) (x_3245 Int) (x_3246 Int) ) (=> (and  (mem2 x_3244 x_3245 x_3241) (mem2 x_3244 x_3246 x_3241)) (= x_3245 x_3246))) (forall ( (x_3247 Int) ) (= (mem0 x_3247 g_S3_2) (exists ( (x_3248 Int) ) (mem2 x_3247 x_3248 x_3241)))) (forall ( (x_3249 Int) ) (=> (exists ( (x_3250 Int) ) (mem2 x_3250 x_3249 x_3241)) (and (>= x_3249 1) (<= x_3249 x_3239)))))) (forall ( (x_3251 Int) ) (=> (and (>= x_3251 1) (<= x_3251 x_3239)) (exists ( (x_3252 Int) ) (mem2 x_3252 x_3251 x_3240))))) (forall ( (x_3253 Int) (x_3254 Int) (x_3255 Int) ) (=> (and  (mem2 x_3254 x_3253 x_3240) (mem2 x_3255 x_3253 x_3240)) (= x_3254 x_3255))))) (> 3 x_3239))))
(assert (forall ((x_3256 Int)(x_3257 Int) ) (=> (and (exists ( (x_3258 (P (C Int Int))) ) (and (and (exists ( (x_3259 (P (C Int Int))) ) (and (forall ( (x_3260 Int) (x_3261 Int) ) (= (mem2 x_3261 x_3260 x_3259) (mem2 x_3261 x_3260 x_3258))) (forall ( (x_3262 Int) (x_3263 Int) (x_3264 Int) ) (=> (and  (mem2 x_3262 x_3263 x_3259) (mem2 x_3262 x_3264 x_3259)) (= x_3263 x_3264))) (forall ( (x_3265 Int) ) (= (mem0 x_3265 g_S1_0) (exists ( (x_3266 Int) ) (mem2 x_3265 x_3266 x_3259)))) (forall ( (x_3267 Int) ) (=> (exists ( (x_3268 Int) ) (mem2 x_3268 x_3267 x_3259)) (and (>= x_3267 1) (<= x_3267 x_3256)))))) (forall ( (x_3269 Int) ) (=> (and (>= x_3269 1) (<= x_3269 x_3256)) (exists ( (x_3270 Int) ) (mem2 x_3270 x_3269 x_3258))))) (forall ( (x_3271 Int) (x_3272 Int) (x_3273 Int) ) (=> (and  (mem2 x_3272 x_3271 x_3258) (mem2 x_3273 x_3271 x_3258)) (= x_3272 x_3273))))) (exists ( (x_3274 (P (C Int Int))) ) (and (and (exists ( (x_3275 (P (C Int Int))) ) (and (forall ( (x_3276 Int) (x_3277 Int) ) (= (mem2 x_3277 x_3276 x_3275) (mem2 x_3277 x_3276 x_3274))) (forall ( (x_3278 Int) (x_3279 Int) (x_3280 Int) ) (=> (and  (mem2 x_3278 x_3279 x_3275) (mem2 x_3278 x_3280 x_3275)) (= x_3279 x_3280))) (forall ( (x_3281 Int) ) (= (mem0 x_3281 g_S2_1) (exists ( (x_3282 Int) ) (mem2 x_3281 x_3282 x_3275)))) (forall ( (x_3283 Int) ) (=> (exists ( (x_3284 Int) ) (mem2 x_3284 x_3283 x_3275)) (and (>= x_3283 1) (<= x_3283 x_3257)))))) (forall ( (x_3285 Int) ) (=> (and (>= x_3285 1) (<= x_3285 x_3257)) (exists ( (x_3286 Int) ) (mem2 x_3286 x_3285 x_3274))))) (forall ( (x_3287 Int) (x_3288 Int) (x_3289 Int) ) (=> (and  (mem2 x_3288 x_3287 x_3274) (mem2 x_3289 x_3287 x_3274)) (= x_3288 x_3289)))))) (> x_3256 x_3257))))
(assert (forall ((x_3290 Int) ) (=> (and  (mem0 x_3290 g_S2_1) (forall ( (x_3291 Int) ) (=> (mem0 x_3291 g_S2_1) (<= x_3290 x_3291)))) (> x_3290 3))))
(assert (forall ((x_3292 Int) ) (=> (and  (mem0 x_3292 g_S2_1) (forall ( (x_3293 Int) ) (=> (mem0 x_3293 g_S2_1) (>= x_3292 x_3293)))) (> x_3292 1))))
(assert (forall ((x_3294 Int) ) (=> (and  (mem0 x_3294 g_S2_1) (forall ( (x_3295 Int) ) (=> (mem0 x_3295 g_S2_1) (<= x_3294 x_3295)))) (> 1 x_3294))))
(assert (forall ((x_3296 Int) ) (=> (and  (mem0 x_3296 g_S2_1) (forall ( (x_3297 Int) ) (=> (mem0 x_3297 g_S2_1) (>= x_3296 x_3297)))) (> 3 x_3296))))
(assert (forall ((x_3298 Int)(x_3299 Int) ) (=> (and (and  (mem0 x_3298 g_S1_0) (forall ( (x_3300 Int) ) (=> (mem0 x_3300 g_S1_0) (>= x_3298 x_3300)))) (and  (mem0 x_3299 g_S1_0) (forall ( (x_3301 Int) ) (=> (mem0 x_3301 g_S1_0) (<= x_3299 x_3301))))) (> x_3298 x_3299))))
(assert (forall ((x_3302 Int) ) (=> (forall ((x_3303 Int) ) (=> (= x_3303 2) (mem2 x_3303 x_3302 g_rel1_3))) (> x_3302 7))))
(assert (forall ((x_3304 Int) ) (=> (forall ((x_3305 Int) ) (=> (= x_3305 2) (mem2 x_3305 x_3304 g_rel1_3))) (> 7 x_3304))))
(assert (forall ((x_3306 Int) ) (=> (forall ((x_3307 Int) ) (=> (= x_3307 1) (mem2 x_3307 x_3306 g_fun1_4))) (> x_3306 3))))
(assert (forall ((x_3308 Int) ) (=> (forall ((x_3309 Int) ) (=> (= x_3309 1) (mem2 x_3309 x_3308 g_fun1_4))) (> 3 x_3308))))
(assert (forall ((x_3310 Int)(x_3311 Int) ) (=> (and (forall ((x_3312 Int) ) (=> (= x_3312 1) (mem2 x_3312 x_3310 g_fun2_5))) (forall ((x_3313 Int) ) (=> (= x_3313 1) (mem2 x_3313 x_3311 g_fun3_6)))) (> x_3310 x_3311))))
(assert (forall ((x_3314 Int) ) (=> (forall ((x_3315 Int) ) (=> (= x_3315 1) (mem2 x_3315 x_3314 g_ss_7))) (> x_3314 7))))
(assert (forall ((x_3316 Int) ) (=> (forall ((x_3317 Int) ) (=> (= x_3317 1) (mem2 x_3317 x_3316 g_ss_7))) (> 7 x_3316))))
(assert (forall ((x_3318 Int) ) (=> (forall ((x_3319 Int) ) (=> (forall ( (x_3320 Int) ) (= (exists ( (x_3321 Int) ) (mem2 x_3320 x_3321 g_ss_7)) (and (>= x_3320 1) (<= x_3320 x_3319)))) (mem2 x_3319 x_3318 g_ss_7))) (> x_3318 21))))
(assert (forall ((x_3322 Int) ) (=> (forall ((x_3323 Int) ) (=> (forall ( (x_3324 Int) ) (= (exists ( (x_3325 Int) ) (mem2 x_3324 x_3325 g_ss_7)) (and (>= x_3324 1) (<= x_3324 x_3323)))) (mem2 x_3323 x_3322 g_ss_7))) (> 21 x_3322))))
; Local hypotheses
; Goal
(assert (not (forall ((x_3326 Int)(x_3327 Int) ) (=> (and (forall ((x_3328 Int) ) (=> (= x_3328 1) (mem2 x_3328 x_3326 g_ss_7))) (forall ((x_3329 Int) ) (=> (forall ( (x_3330 Int) ) (= (exists ( (x_3331 Int) ) (mem2 x_3330 x_3331 g_ss_7)) (and (>= x_3330 1) (<= x_3330 x_3329)))) (mem2 x_3329 x_3327 g_ss_7)))) (> x_3326 x_3327)))))
(check-sat)
(exit)
