(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(declare-fun g_c0_3 () Real)
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
(assert (and (forall ((x_47 Int)(x_48 Int) ) (=> (and (= x_47 2) (= x_48 18)) (mem2 x_47 x_48 g_ss_0))) (not (and (forall ( (x_49 Int) ) (= (exists ( (x_50 Int) ) (mem2 x_49 x_50 g_ss_0)) (and (>= x_49 1) (<= x_49 2)))) (forall ((x_51 Int)(x_52 Int) ) (=> (and (forall ( (x_53 Int) ) (= (exists ( (x_54 Int) ) (mem2 x_53 x_54 g_ss_0)) (and (>= x_53 1) (<= x_53 x_51)))) (= x_52 18)) (mem2 x_51 x_52 g_ss_0)))))))
(assert (and (and (= 1 1) (= 1 2)) (not (and (forall ( (x_55 Int) ) (= (exists ( (x_56 Int) ) (and (= x_55 1) (= x_56 2))) (and (>= x_55 1) (<= x_55 1)))) (and (forall ( (x_57 Int) ) (= (exists ( (x_58 Int) ) (and (= x_57 1) (= x_58 2))) (and (>= x_57 1) (<= x_57 1)))) (= 1 2))))))
; Local hypotheses
; Goal
(assert (not (and (mem3 g_ii_2 g_c0_3 g_tt_1) (not (and (forall ( (x_59 Int) ) (= (exists ( (x_60 Real) ) (mem3 x_59 x_60 g_tt_1)) (and (>= x_59 1) (<= x_59 g_ii_2)))) (forall ((x_61 Int) ) (=> (forall ( (x_62 Int) ) (= (exists ( (x_63 Real) ) (mem3 x_62 x_63 g_tt_1)) (and (>= x_62 1) (<= x_62 x_61)))) (mem3 x_61 g_c0_3 g_tt_1))))))))
(check-sat)
(exit)
