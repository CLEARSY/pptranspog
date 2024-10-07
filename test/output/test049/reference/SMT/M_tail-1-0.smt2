(set-option :print-success false)
(set-logic ALL)
; PO 1 0
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
(declare-fun g_ii_2 () Int)
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun g_tt_1 () (P (C Int Real)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int Real (P (C Int Real))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (forall ( (x_14 Int) (x_15 Int) ) (= (mem2 x_15 x_14 g_ss_0) (or  (and (= x_15 1) (= x_14 7)) (and (= x_15 2) (= x_14 18)) (and (= x_15 3) (= x_14 18)) (and (= x_15 4) (= x_14 21))))))
(assert (exists ( (x_16 Int) ) (exists ( (x_17 (P (C Int Real))) ) (and (forall ( (x_18 Real) (x_19 Int) ) (= (mem3 x_19 x_18 x_17) (mem3 x_19 x_18 g_tt_1))) (forall ( (x_20 Int) (x_21 Real) (x_22 Real) ) (=> (and  (mem3 x_20 x_21 x_17) (mem3 x_20 x_22 x_17)) (= x_21 x_22))) (forall ( (x_23 Int) ) (= (and (>= x_23 1) (<= x_23 x_16)) (exists ( (x_24 Real) ) (mem3 x_23 x_24 x_17)))) (forall ( (x_25 Real) ) (=> (exists ( (x_26 Int) ) (mem3 x_26 x_25 x_17)) true))))))
(assert (<= 0 g_ii_2))
(assert true)
; Global hypotheses
(assert (forall ((x_29 Int)(x_30 Int) ) (=> (and (= x_29 (+ 2 1)) (= x_30 18)) (mem2 x_29 x_30 g_ss_0))))
; Local hypotheses
; Goal
(assert (not (and (= (+ 1 1) 1) (= 1 2))))
(check-sat)
(exit)
