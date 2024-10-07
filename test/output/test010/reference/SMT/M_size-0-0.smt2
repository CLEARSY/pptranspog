(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_empty_seq_1 () (P (C Int Int)))
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (forall ( (x_14 Int) (x_15 Int) ) (= (mem2 x_15 x_14 g_ss_0) (or  (and (= x_15 1) (= x_14 7)) (and (= x_15 2) (= x_14 18)) (and (= x_15 3) (= x_14 18)) (and (= x_15 4) (= x_14 21))))))
(assert (exists ( (x_16 Int) ) (exists ( (x_17 (P (C Int Int))) ) (and (forall ( (x_18 Int) (x_19 Int) ) (= (mem2 x_19 x_18 x_17) (mem2 x_19 x_18 g_empty_seq_1))) (forall ( (x_20 Int) (x_21 Int) (x_22 Int) ) (=> (and  (mem2 x_20 x_21 x_17) (mem2 x_20 x_22 x_17)) (= x_21 x_22))) (forall ( (x_23 Int) ) (= (and (>= x_23 1) (<= x_23 x_16)) (exists ( (x_24 Int) ) (mem2 x_23 x_24 x_17)))) (forall ( (x_25 Int) ) (=> (exists ( (x_26 Int) ) (mem2 x_26 x_25 x_17)) true))))))
(assert (forall ( (x_27 Int) (x_28 Int) ) (= (mem2 x_28 x_27 g_empty_seq_1) false)))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ( (x_29 Int) ) (= (exists ( (x_30 Int) ) (mem2 x_29 x_30 g_ss_0)) (and (>= x_29 1) (<= x_29 4))))))
(check-sat)
(exit)
