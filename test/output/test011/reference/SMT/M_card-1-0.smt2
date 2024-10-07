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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
; Global hypotheses
(assert (exists ( (x_25 (P (C Int Int))) ) (and (and (exists ( (x_26 (P (C Int Int))) ) (and (forall ( (x_27 Int) (x_28 Int) ) (= (mem2 x_28 x_27 x_26) (mem2 x_28 x_27 x_25))) (forall ( (x_29 Int) (x_30 Int) (x_31 Int) ) (=> (and  (mem2 x_29 x_30 x_26) (mem2 x_29 x_31 x_26)) (= x_30 x_31))) (forall ( (x_32 Int) ) (= (mem0 x_32 g_S1_0) (exists ( (x_33 Int) ) (mem2 x_32 x_33 x_26)))) (forall ( (x_34 Int) ) (=> (exists ( (x_35 Int) ) (mem2 x_35 x_34 x_26)) (and (>= x_34 1) (<= x_34 0)))))) (forall ( (x_36 Int) ) (=> (and (>= x_36 1) (<= x_36 0)) (exists ( (x_37 Int) ) (mem2 x_37 x_36 x_25))))) (forall ( (x_38 Int) (x_39 Int) (x_40 Int) ) (=> (and  (mem2 x_39 x_38 x_25) (mem2 x_40 x_38 x_25)) (= x_39 x_40))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_41 (P (C Int Int))) ) (and (and (exists ( (x_42 (P (C Int Int))) ) (and (forall ( (x_43 Int) (x_44 Int) ) (= (mem2 x_44 x_43 x_42) (mem2 x_44 x_43 x_41))) (forall ( (x_45 Int) (x_46 Int) (x_47 Int) ) (=> (and  (mem2 x_45 x_46 x_42) (mem2 x_45 x_47 x_42)) (= x_46 x_47))) (forall ( (x_48 Int) ) (= (mem0 x_48 g_S2_1) (exists ( (x_49 Int) ) (mem2 x_48 x_49 x_42)))) (forall ( (x_50 Int) ) (=> (exists ( (x_51 Int) ) (mem2 x_51 x_50 x_42)) (and (>= x_50 1) (<= x_50 1)))))) (forall ( (x_52 Int) ) (=> (and (>= x_52 1) (<= x_52 1)) (exists ( (x_53 Int) ) (mem2 x_53 x_52 x_41))))) (forall ( (x_54 Int) (x_55 Int) (x_56 Int) ) (=> (and  (mem2 x_55 x_54 x_41) (mem2 x_56 x_54 x_41)) (= x_55 x_56)))))))
(check-sat)
(exit)
