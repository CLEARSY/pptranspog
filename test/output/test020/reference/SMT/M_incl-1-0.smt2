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
(declare-fun g_c0_1 () Int)
(declare-fun g_c1_2 () (P Int))
(declare-fun g_c2_3 () (P (P Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( (P Int) (P (P Int))) Bool)
; Defines
(assert (and  (not (forall ( (x_3 Int) ) (= (mem0 x_3 g_s0_0) false))) (and  (forall ( (x_6 Int) ) (=> (mem0 x_6 g_s0_0) true)) (exists ( (x_4 Int) (x_5 (P (C Int Int))) ) (and (and (exists ( (x_7 (P (C Int Int))) ) (and (forall ( (x_8 Int) (x_9 Int) ) (= (mem2 x_9 x_8 x_7) (mem2 x_9 x_8 x_5))) (forall ( (x_10 Int) (x_11 Int) (x_12 Int) ) (=> (and  (mem2 x_10 x_11 x_7) (mem2 x_10 x_12 x_7)) (= x_11 x_12))) (forall ( (x_13 Int) ) (= (and (>= x_13 1) (<= x_13 x_4)) (exists ( (x_14 Int) ) (mem2 x_13 x_14 x_7)))) (forall ( (x_15 Int) ) (=> (exists ( (x_16 Int) ) (mem2 x_16 x_15 x_7)) (mem0 x_15 g_s0_0))))) (forall ( (x_17 Int) ) (=> (mem0 x_17 g_s0_0) (exists ( (x_18 Int) ) (mem2 x_18 x_17 x_5))))) (forall ( (x_19 Int) (x_20 Int) (x_21 Int) ) (=> (and  (mem2 x_20 x_19 x_5) (mem2 x_21 x_19 x_5)) (= x_20 x_21))))))))
(assert (mem0 g_c0_1 g_s0_0))
(assert (forall ( (x_22 Int) ) (=> (mem0 x_22 g_c1_2) (mem0 x_22 g_s0_0))))
(assert (forall ( (x_23 (P Int)) ) (=> (mem3 x_23 g_c2_3) (forall ( (x_24 Int) ) (=> (mem0 x_24 x_23) (mem0 x_24 g_s0_0))))))
; Global hypotheses
(assert (forall ( (x_26 Int) ) (=> (mem0 x_26 g_c1_2) (mem0 x_26 g_s0_0))))
; Local hypotheses
; Goal
(assert (not (not (forall ( (x_27 Int) ) (=> (mem0 x_27 g_c1_2) (mem0 x_27 g_s0_0))))))
(check-sat)
(exit)
