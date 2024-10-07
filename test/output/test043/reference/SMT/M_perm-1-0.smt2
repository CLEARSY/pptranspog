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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int Real (P (C Int Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (or  (= x_4 5) (= x_4 4) (= x_4 1) (= x_4 1) (= x_4 2) (= x_4 3) (= x_4 8)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S2_1) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (and  true (= (mod x_6 2) 0)))))
; Global hypotheses
(assert (exists ( (x_23 Int) ) (and (and (exists ( (x_24 (P (C Int Int))) ) (and (forall ( (x_25 Int) (x_26 Int) ) (= (mem2 x_26 x_25 x_24) (or  (and (= x_26 1) (= x_25 5)) (and (= x_26 2) (= x_25 2)) (and (= x_26 3) (= x_25 0))))) (forall ( (x_27 Int) (x_28 Int) (x_29 Int) ) (=> (and  (mem2 x_27 x_28 x_24) (mem2 x_27 x_29 x_24)) (= x_28 x_29))) (forall ( (x_30 Int) ) (= (and (>= x_30 1) (<= x_30 x_23)) (exists ( (x_31 Int) ) (mem2 x_30 x_31 x_24)))) (forall ( (x_32 Int) ) (=> (exists ( (x_33 Int) ) (mem2 x_33 x_32 x_24)) (mem0 x_32 g_S1_0))))) (forall ( (x_34 Int) ) (=> (mem0 x_34 g_S1_0) (exists ( (x_35 Int) ) (or  (and (= x_35 1) (= x_34 5)) (and (= x_35 2) (= x_34 2)) (and (= x_35 3) (= x_34 0))))))) (forall ( (x_36 Int) (x_37 Int) (x_38 Int) ) (=> (and  (or  (and (= x_37 1) (= x_36 5)) (and (= x_37 2) (= x_36 2)) (and (= x_37 3) (= x_36 0))) (or  (and (= x_38 1) (= x_36 5)) (and (= x_38 2) (= x_36 2)) (and (= x_38 3) (= x_36 0)))) (= x_37 x_38))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_39 Int) ) (and (and (exists ( (x_40 (P (C Int Real))) ) (and (forall ( (x_41 Real) (x_42 Int) ) (= (mem3 x_42 x_41 x_40) (or  (and (= x_42 1) (= x_41 1.2)) (and (= x_42 2) (= x_41 (- 5.3)))))) (forall ( (x_43 Int) (x_44 Real) (x_45 Real) ) (=> (and  (mem3 x_43 x_44 x_40) (mem3 x_43 x_45 x_40)) (= x_44 x_45))) (forall ( (x_46 Int) ) (= (and (>= x_46 1) (<= x_46 x_39)) (exists ( (x_47 Real) ) (mem3 x_46 x_47 x_40)))) (forall ( (x_48 Real) ) (=> (exists ( (x_49 Int) ) (mem3 x_49 x_48 x_40)) true)))) (forall ( (x_50 Real) ) (=> true (exists ( (x_51 Int) ) (or  (and (= x_51 1) (= x_50 1.2)) (and (= x_51 2) (= x_50 (- 5.3)))))))) (forall ( (x_52 Real) (x_53 Int) (x_54 Int) ) (=> (and  (or  (and (= x_53 1) (= x_52 1.2)) (and (= x_53 2) (= x_52 (- 5.3)))) (or  (and (= x_54 1) (= x_52 1.2)) (and (= x_54 2) (= x_52 (- 5.3))))) (= x_53 x_54)))))))
(check-sat)
(exit)
