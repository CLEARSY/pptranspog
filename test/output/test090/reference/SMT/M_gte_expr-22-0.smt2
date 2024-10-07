(set-option :print-success false)
(set-logic ALL)
; PO 22 0
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
(assert (forall ((x_2220 (P Int)) ) (=> (forall ( (x_2221 Int) ) (= (mem0 x_2221 x_2220) (exists ( (x_2222 Int) ) (and  (mem0 x_2222 g_S1_0) (= x_2221 x_2222))))) (>= (isum x_2220) 0))))
(assert (forall ((x_2223 (P Int)) ) (=> (forall ( (x_2224 Int) ) (= (mem0 x_2224 x_2223) (exists ( (x_2225 Int) ) (and  (mem0 x_2225 g_S2_1) (= x_2224 x_2225))))) (>= (isum x_2223) 1))))
(assert (forall ((x_2226 (P Int)) ) (=> (forall ( (x_2227 Int) ) (= (mem0 x_2227 x_2226) (exists ( (x_2228 Int) ) (and  (mem0 x_2228 g_S3_2) (= x_2227 x_2228))))) (>= (isum x_2226) 6))))
(assert (forall ((x_2229 (P Int)) ) (=> (forall ( (x_2230 Int) ) (= (mem0 x_2230 x_2229) (exists ( (x_2231 Int) ) (and  (mem0 x_2231 g_S1_0) (= x_2230 x_2231))))) (>= (iprod x_2229) 1))))
(assert (forall ((x_2232 (P Int)) ) (=> (forall ( (x_2233 Int) ) (= (mem0 x_2233 x_2232) (exists ( (x_2234 Int) ) (and  (mem0 x_2234 g_S2_1) (= x_2233 x_2234))))) (>= (iprod x_2232) 1))))
(assert (forall ((x_2235 (P Int)) ) (=> (forall ( (x_2236 Int) ) (= (mem0 x_2236 x_2235) (exists ( (x_2237 Int) ) (and  (mem0 x_2237 g_S3_2) (= x_2236 x_2237))))) (>= (iprod x_2235) 6))))
(assert (forall ((x_2238 Int) ) (=> (exists ( (x_2239 (P (C Int Int))) ) (and (and (exists ( (x_2240 (P (C Int Int))) ) (and (forall ( (x_2241 Int) (x_2242 Int) ) (= (mem2 x_2242 x_2241 x_2240) (mem2 x_2242 x_2241 x_2239))) (forall ( (x_2243 Int) (x_2244 Int) (x_2245 Int) ) (=> (and  (mem2 x_2243 x_2244 x_2240) (mem2 x_2243 x_2245 x_2240)) (= x_2244 x_2245))) (forall ( (x_2246 Int) ) (= (mem0 x_2246 g_S1_0) (exists ( (x_2247 Int) ) (mem2 x_2246 x_2247 x_2240)))) (forall ( (x_2248 Int) ) (=> (exists ( (x_2249 Int) ) (mem2 x_2249 x_2248 x_2240)) (and (>= x_2248 1) (<= x_2248 x_2238)))))) (forall ( (x_2250 Int) ) (=> (and (>= x_2250 1) (<= x_2250 x_2238)) (exists ( (x_2251 Int) ) (mem2 x_2251 x_2250 x_2239))))) (forall ( (x_2252 Int) (x_2253 Int) (x_2254 Int) ) (=> (and  (mem2 x_2253 x_2252 x_2239) (mem2 x_2254 x_2252 x_2239)) (= x_2253 x_2254))))) (>= x_2238 0))))
(assert (forall ((x_2255 Int) ) (=> (exists ( (x_2256 (P (C Int Int))) ) (and (and (exists ( (x_2257 (P (C Int Int))) ) (and (forall ( (x_2258 Int) (x_2259 Int) ) (= (mem2 x_2259 x_2258 x_2257) (mem2 x_2259 x_2258 x_2256))) (forall ( (x_2260 Int) (x_2261 Int) (x_2262 Int) ) (=> (and  (mem2 x_2260 x_2261 x_2257) (mem2 x_2260 x_2262 x_2257)) (= x_2261 x_2262))) (forall ( (x_2263 Int) ) (= (mem0 x_2263 g_S2_1) (exists ( (x_2264 Int) ) (mem2 x_2263 x_2264 x_2257)))) (forall ( (x_2265 Int) ) (=> (exists ( (x_2266 Int) ) (mem2 x_2266 x_2265 x_2257)) (and (>= x_2265 1) (<= x_2265 x_2255)))))) (forall ( (x_2267 Int) ) (=> (and (>= x_2267 1) (<= x_2267 x_2255)) (exists ( (x_2268 Int) ) (mem2 x_2268 x_2267 x_2256))))) (forall ( (x_2269 Int) (x_2270 Int) (x_2271 Int) ) (=> (and  (mem2 x_2270 x_2269 x_2256) (mem2 x_2271 x_2269 x_2256)) (= x_2270 x_2271))))) (>= x_2255 1))))
(assert (forall ((x_2272 Int) ) (=> (exists ( (x_2273 (P (C Int Int))) ) (and (and (exists ( (x_2274 (P (C Int Int))) ) (and (forall ( (x_2275 Int) (x_2276 Int) ) (= (mem2 x_2276 x_2275 x_2274) (mem2 x_2276 x_2275 x_2273))) (forall ( (x_2277 Int) (x_2278 Int) (x_2279 Int) ) (=> (and  (mem2 x_2277 x_2278 x_2274) (mem2 x_2277 x_2279 x_2274)) (= x_2278 x_2279))) (forall ( (x_2280 Int) ) (= (mem0 x_2280 g_S3_2) (exists ( (x_2281 Int) ) (mem2 x_2280 x_2281 x_2274)))) (forall ( (x_2282 Int) ) (=> (exists ( (x_2283 Int) ) (mem2 x_2283 x_2282 x_2274)) (and (>= x_2282 1) (<= x_2282 x_2272)))))) (forall ( (x_2284 Int) ) (=> (and (>= x_2284 1) (<= x_2284 x_2272)) (exists ( (x_2285 Int) ) (mem2 x_2285 x_2284 x_2273))))) (forall ( (x_2286 Int) (x_2287 Int) (x_2288 Int) ) (=> (and  (mem2 x_2287 x_2286 x_2273) (mem2 x_2288 x_2286 x_2273)) (= x_2287 x_2288))))) (>= x_2272 3))))
(assert (forall ((x_2289 Int) ) (=> (exists ( (x_2290 (P (C Int Int))) ) (and (and (exists ( (x_2291 (P (C Int Int))) ) (and (forall ( (x_2292 Int) (x_2293 Int) ) (= (mem2 x_2293 x_2292 x_2291) (mem2 x_2293 x_2292 x_2290))) (forall ( (x_2294 Int) (x_2295 Int) (x_2296 Int) ) (=> (and  (mem2 x_2294 x_2295 x_2291) (mem2 x_2294 x_2296 x_2291)) (= x_2295 x_2296))) (forall ( (x_2297 Int) ) (= (mem0 x_2297 g_S1_0) (exists ( (x_2298 Int) ) (mem2 x_2297 x_2298 x_2291)))) (forall ( (x_2299 Int) ) (=> (exists ( (x_2300 Int) ) (mem2 x_2300 x_2299 x_2291)) (and (>= x_2299 1) (<= x_2299 x_2289)))))) (forall ( (x_2301 Int) ) (=> (and (>= x_2301 1) (<= x_2301 x_2289)) (exists ( (x_2302 Int) ) (mem2 x_2302 x_2301 x_2290))))) (forall ( (x_2303 Int) (x_2304 Int) (x_2305 Int) ) (=> (and  (mem2 x_2304 x_2303 x_2290) (mem2 x_2305 x_2303 x_2290)) (= x_2304 x_2305))))) (>= 0 x_2289))))
(assert (forall ((x_2306 Int) ) (=> (exists ( (x_2307 (P (C Int Int))) ) (and (and (exists ( (x_2308 (P (C Int Int))) ) (and (forall ( (x_2309 Int) (x_2310 Int) ) (= (mem2 x_2310 x_2309 x_2308) (mem2 x_2310 x_2309 x_2307))) (forall ( (x_2311 Int) (x_2312 Int) (x_2313 Int) ) (=> (and  (mem2 x_2311 x_2312 x_2308) (mem2 x_2311 x_2313 x_2308)) (= x_2312 x_2313))) (forall ( (x_2314 Int) ) (= (mem0 x_2314 g_S2_1) (exists ( (x_2315 Int) ) (mem2 x_2314 x_2315 x_2308)))) (forall ( (x_2316 Int) ) (=> (exists ( (x_2317 Int) ) (mem2 x_2317 x_2316 x_2308)) (and (>= x_2316 1) (<= x_2316 x_2306)))))) (forall ( (x_2318 Int) ) (=> (and (>= x_2318 1) (<= x_2318 x_2306)) (exists ( (x_2319 Int) ) (mem2 x_2319 x_2318 x_2307))))) (forall ( (x_2320 Int) (x_2321 Int) (x_2322 Int) ) (=> (and  (mem2 x_2321 x_2320 x_2307) (mem2 x_2322 x_2320 x_2307)) (= x_2321 x_2322))))) (>= 1 x_2306))))
(assert (forall ((x_2323 Int) ) (=> (exists ( (x_2324 (P (C Int Int))) ) (and (and (exists ( (x_2325 (P (C Int Int))) ) (and (forall ( (x_2326 Int) (x_2327 Int) ) (= (mem2 x_2327 x_2326 x_2325) (mem2 x_2327 x_2326 x_2324))) (forall ( (x_2328 Int) (x_2329 Int) (x_2330 Int) ) (=> (and  (mem2 x_2328 x_2329 x_2325) (mem2 x_2328 x_2330 x_2325)) (= x_2329 x_2330))) (forall ( (x_2331 Int) ) (= (mem0 x_2331 g_S3_2) (exists ( (x_2332 Int) ) (mem2 x_2331 x_2332 x_2325)))) (forall ( (x_2333 Int) ) (=> (exists ( (x_2334 Int) ) (mem2 x_2334 x_2333 x_2325)) (and (>= x_2333 1) (<= x_2333 x_2323)))))) (forall ( (x_2335 Int) ) (=> (and (>= x_2335 1) (<= x_2335 x_2323)) (exists ( (x_2336 Int) ) (mem2 x_2336 x_2335 x_2324))))) (forall ( (x_2337 Int) (x_2338 Int) (x_2339 Int) ) (=> (and  (mem2 x_2338 x_2337 x_2324) (mem2 x_2339 x_2337 x_2324)) (= x_2338 x_2339))))) (>= 3 x_2323))))
(assert (forall ((x_2340 Int)(x_2341 Int) ) (=> (and (exists ( (x_2342 (P (C Int Int))) ) (and (and (exists ( (x_2343 (P (C Int Int))) ) (and (forall ( (x_2344 Int) (x_2345 Int) ) (= (mem2 x_2345 x_2344 x_2343) (mem2 x_2345 x_2344 x_2342))) (forall ( (x_2346 Int) (x_2347 Int) (x_2348 Int) ) (=> (and  (mem2 x_2346 x_2347 x_2343) (mem2 x_2346 x_2348 x_2343)) (= x_2347 x_2348))) (forall ( (x_2349 Int) ) (= (mem0 x_2349 g_S1_0) (exists ( (x_2350 Int) ) (mem2 x_2349 x_2350 x_2343)))) (forall ( (x_2351 Int) ) (=> (exists ( (x_2352 Int) ) (mem2 x_2352 x_2351 x_2343)) (and (>= x_2351 1) (<= x_2351 x_2340)))))) (forall ( (x_2353 Int) ) (=> (and (>= x_2353 1) (<= x_2353 x_2340)) (exists ( (x_2354 Int) ) (mem2 x_2354 x_2353 x_2342))))) (forall ( (x_2355 Int) (x_2356 Int) (x_2357 Int) ) (=> (and  (mem2 x_2356 x_2355 x_2342) (mem2 x_2357 x_2355 x_2342)) (= x_2356 x_2357))))) (exists ( (x_2358 (P (C Int Int))) ) (and (and (exists ( (x_2359 (P (C Int Int))) ) (and (forall ( (x_2360 Int) (x_2361 Int) ) (= (mem2 x_2361 x_2360 x_2359) (mem2 x_2361 x_2360 x_2358))) (forall ( (x_2362 Int) (x_2363 Int) (x_2364 Int) ) (=> (and  (mem2 x_2362 x_2363 x_2359) (mem2 x_2362 x_2364 x_2359)) (= x_2363 x_2364))) (forall ( (x_2365 Int) ) (= (mem0 x_2365 g_S2_1) (exists ( (x_2366 Int) ) (mem2 x_2365 x_2366 x_2359)))) (forall ( (x_2367 Int) ) (=> (exists ( (x_2368 Int) ) (mem2 x_2368 x_2367 x_2359)) (and (>= x_2367 1) (<= x_2367 x_2341)))))) (forall ( (x_2369 Int) ) (=> (and (>= x_2369 1) (<= x_2369 x_2341)) (exists ( (x_2370 Int) ) (mem2 x_2370 x_2369 x_2358))))) (forall ( (x_2371 Int) (x_2372 Int) (x_2373 Int) ) (=> (and  (mem2 x_2372 x_2371 x_2358) (mem2 x_2373 x_2371 x_2358)) (= x_2372 x_2373)))))) (>= x_2340 x_2341))))
(assert (forall ((x_2374 Int) ) (=> (and  (mem0 x_2374 g_S2_1) (forall ( (x_2375 Int) ) (=> (mem0 x_2375 g_S2_1) (<= x_2374 x_2375)))) (>= x_2374 3))))
(assert (forall ((x_2376 Int) ) (=> (and  (mem0 x_2376 g_S2_1) (forall ( (x_2377 Int) ) (=> (mem0 x_2377 g_S2_1) (>= x_2376 x_2377)))) (>= x_2376 1))))
(assert (forall ((x_2378 Int) ) (=> (and  (mem0 x_2378 g_S2_1) (forall ( (x_2379 Int) ) (=> (mem0 x_2379 g_S2_1) (<= x_2378 x_2379)))) (>= 1 x_2378))))
(assert (forall ((x_2380 Int) ) (=> (and  (mem0 x_2380 g_S2_1) (forall ( (x_2381 Int) ) (=> (mem0 x_2381 g_S2_1) (>= x_2380 x_2381)))) (>= 3 x_2380))))
(assert (forall ((x_2382 Int)(x_2383 Int) ) (=> (and (and  (mem0 x_2382 g_S1_0) (forall ( (x_2384 Int) ) (=> (mem0 x_2384 g_S1_0) (>= x_2382 x_2384)))) (and  (mem0 x_2383 g_S1_0) (forall ( (x_2385 Int) ) (=> (mem0 x_2385 g_S1_0) (<= x_2383 x_2385))))) (>= x_2382 x_2383))))
(assert (forall ((x_2386 Int) ) (=> (forall ((x_2387 Int) ) (=> (= x_2387 2) (mem2 x_2387 x_2386 g_rel1_3))) (>= x_2386 7))))
(assert (forall ((x_2388 Int) ) (=> (forall ((x_2389 Int) ) (=> (= x_2389 2) (mem2 x_2389 x_2388 g_rel1_3))) (>= 7 x_2388))))
(assert (forall ((x_2390 Int) ) (=> (forall ((x_2391 Int) ) (=> (= x_2391 1) (mem2 x_2391 x_2390 g_fun1_4))) (>= x_2390 3))))
(assert (forall ((x_2392 Int) ) (=> (forall ((x_2393 Int) ) (=> (= x_2393 1) (mem2 x_2393 x_2392 g_fun1_4))) (>= 3 x_2392))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2394 Int)(x_2395 Int) ) (=> (and (forall ((x_2396 Int) ) (=> (= x_2396 1) (mem2 x_2396 x_2394 g_fun2_5))) (forall ((x_2397 Int) ) (=> (= x_2397 1) (mem2 x_2397 x_2395 g_fun3_6)))) (>= x_2394 x_2395)))))
(check-sat)
(exit)
