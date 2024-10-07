(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_2 () Int)
(declare-fun g_c1_3 () Int)
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (and  (forall ( (x_5 Int) ) (=> (mem0 x_5 g_s0_0) true)) (exists ( (x_3 Int) (x_4 (P (C Int Int))) ) (and (and (exists ( (x_6 (P (C Int Int))) ) (and (forall ( (x_7 Int) (x_8 Int) ) (= (mem2 x_8 x_7 x_6) (mem2 x_8 x_7 x_4))) (forall ( (x_9 Int) (x_10 Int) (x_11 Int) ) (=> (and  (mem2 x_9 x_10 x_6) (mem2 x_9 x_11 x_6)) (= x_10 x_11))) (forall ( (x_12 Int) ) (= (and (>= x_12 1) (<= x_12 x_3)) (exists ( (x_13 Int) ) (mem2 x_12 x_13 x_6)))) (forall ( (x_14 Int) ) (=> (exists ( (x_15 Int) ) (mem2 x_15 x_14 x_6)) (mem0 x_14 g_s0_0))))) (forall ( (x_16 Int) ) (=> (mem0 x_16 g_s0_0) (exists ( (x_17 Int) ) (mem2 x_17 x_16 x_4))))) (forall ( (x_18 Int) (x_19 Int) (x_20 Int) ) (=> (and  (mem2 x_19 x_18 x_4) (mem2 x_20 x_18 x_4)) (= x_19 x_20)))))))
(assert (and  (and  (forall ( (x_23 Int) ) (=> (mem0 x_23 g_s1_1) true)) (exists ( (x_21 Int) (x_22 (P (C Int Int))) ) (and (and (exists ( (x_24 (P (C Int Int))) ) (and (forall ( (x_25 Int) (x_26 Int) ) (= (mem2 x_26 x_25 x_24) (mem2 x_26 x_25 x_22))) (forall ( (x_27 Int) (x_28 Int) (x_29 Int) ) (=> (and  (mem2 x_27 x_28 x_24) (mem2 x_27 x_29 x_24)) (= x_28 x_29))) (forall ( (x_30 Int) ) (= (and (>= x_30 1) (<= x_30 x_21)) (exists ( (x_31 Int) ) (mem2 x_30 x_31 x_24)))) (forall ( (x_32 Int) ) (=> (exists ( (x_33 Int) ) (mem2 x_33 x_32 x_24)) (mem0 x_32 g_s1_1))))) (forall ( (x_34 Int) ) (=> (mem0 x_34 g_s1_1) (exists ( (x_35 Int) ) (mem2 x_35 x_34 x_22))))) (forall ( (x_36 Int) (x_37 Int) (x_38 Int) ) (=> (and  (mem2 x_37 x_36 x_22) (mem2 x_38 x_36 x_22)) (= x_37 x_38)))))) (not (forall ( (x_39 Int) ) (= (mem0 x_39 g_s1_1) false)))))
(assert true)
(assert true)
; Global hypotheses
(assert (mem0 g_c0_2 g_s0_0))
; Local hypotheses
; Goal
(assert (not (mem0 g_c1_3 g_s1_1)))
(check-sat)
(exit)
