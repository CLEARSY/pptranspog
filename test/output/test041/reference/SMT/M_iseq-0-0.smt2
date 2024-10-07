(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-fun mem1 (Real (P Real)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (or  (= x_4 5) (= x_4 4) (= x_4 1) (= x_4 1) (= x_4 2) (= x_4 3) (= x_4 8)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S2_1) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (and  true (= (mod x_6 2) 0)))))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (exists ( (x_7 Int) ) (and (exists ( (x_8 (P (C Int Int))) ) (and (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 x_8) (or  (and (= x_10 1) (= x_9 5)) (and (= x_10 2) (= x_9 2)) (and (= x_10 3) (= x_9 0))))) (forall ( (x_11 Int) (x_12 Int) (x_13 Int) ) (=> (and  (mem2 x_11 x_12 x_8) (mem2 x_11 x_13 x_8)) (= x_12 x_13))) (forall ( (x_14 Int) ) (= (and (>= x_14 1) (<= x_14 x_7)) (exists ( (x_15 Int) ) (mem2 x_14 x_15 x_8)))) (forall ( (x_16 Int) ) (=> (exists ( (x_17 Int) ) (mem2 x_17 x_16 x_8)) (mem0 x_16 g_S1_0))))) (forall ( (x_18 Int) (x_19 Int) (x_20 Int) ) (=> (and  (or  (and (= x_19 1) (= x_18 5)) (and (= x_19 2) (= x_18 2)) (and (= x_19 3) (= x_18 0))) (or  (and (= x_20 1) (= x_18 5)) (and (= x_20 2) (= x_18 2)) (and (= x_20 3) (= x_18 0)))) (= x_19 x_20)))))))
(check-sat)
(exit)
