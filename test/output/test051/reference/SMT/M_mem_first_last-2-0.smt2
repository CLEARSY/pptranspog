(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(declare-fun g_ss_0 () (P (C Int (P Int))))
(declare-fun g_tt_1 () (P (C Int (P Int))))
(declare-fun mem2 ( Int (P Int) (P (C Int (P Int)))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int (P Int)))) ) (and (forall ( (x_5 (P Int)) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 (P Int)) (x_9 (P Int)) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (forall ( (x_10 Int) ) (= (mem0 x_10 x_8) (mem0 x_10 x_9))))) (forall ( (x_11 Int) ) (= (and (>= x_11 1) (<= x_11 x_3)) (exists ( (x_12 (P Int)) ) (mem2 x_11 x_12 x_4)))) (forall ( (x_13 (P Int)) ) (=> (exists ( (x_14 Int) ) (mem2 x_14 x_13 x_4)) (forall ( (x_15 Int) ) (=> (mem0 x_15 x_13) true))))))))
(assert (exists ( (x_16 Int) ) (exists ( (x_17 (P (C Int (P Int)))) ) (and (forall ( (x_18 (P Int)) (x_19 Int) ) (= (mem2 x_19 x_18 x_17) (mem2 x_19 x_18 g_tt_1))) (forall ( (x_20 Int) (x_21 (P Int)) (x_22 (P Int)) ) (=> (and  (mem2 x_20 x_21 x_17) (mem2 x_20 x_22 x_17)) (forall ( (x_23 Int) ) (= (mem0 x_23 x_21) (mem0 x_23 x_22))))) (forall ( (x_24 Int) ) (= (and (>= x_24 1) (<= x_24 x_16)) (exists ( (x_25 (P Int)) ) (mem2 x_24 x_25 x_17)))) (forall ( (x_26 (P Int)) ) (=> (exists ( (x_27 Int) ) (mem2 x_27 x_26 x_17)) (forall ( (x_28 Int) ) (=> (mem0 x_28 x_26) true))))))))
(assert (forall ( (x_29 (P Int)) (x_30 Int) ) (= (mem2 x_30 x_29 g_tt_1) (or  (and (= x_30 1) (forall ( (x_31 Int) ) (= (mem0 x_31 x_29) (or  (= x_31 2) (= x_31 5))))) (and (= x_30 2) (forall ( (x_32 Int) ) (= (mem0 x_32 x_29) (or  (= x_32 (- 1)) (= x_32 (- 2)) (= x_32 9))))) (and (= x_30 3) (forall ( (x_33 Int) ) (= (mem0 x_33 x_29) false))) (and (= x_30 4) (forall ( (x_34 Int) ) (= (mem0 x_34 x_29) (= x_34 5))))))))
(assert true)
; Global hypotheses
(assert (forall ((x_43 (P Int)) ) (=> (forall ((x_44 Int) ) (=> (= x_44 1) (mem2 x_44 x_43 g_ss_0))) (mem0 g_c0_2 x_43))))
(assert (forall ((x_45 (P Int)) ) (=> (forall ((x_46 Int) ) (=> (forall ( (x_47 Int) ) (= (exists ( (x_48 (P Int)) ) (mem2 x_47 x_48 g_ss_0)) (and (>= x_47 1) (<= x_47 x_46)))) (mem2 x_46 x_45 g_ss_0))) (mem0 g_c0_2 x_45))))
; Local hypotheses
; Goal
(assert (not (forall ((x_49 (P Int))(x_50 Int) ) (=> (and (forall ((x_51 Int) ) (=> (= x_51 1) (mem2 x_51 x_49 g_tt_1))) (= x_50 2)) (mem0 x_50 x_49)))))
(check-sat)
(exit)
