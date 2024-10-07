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
(assert (exists ( (x_21 Int) ) (and (exists ( (x_22 (P (C Int Int))) ) (and (forall ( (x_23 Int) (x_24 Int) ) (= (mem2 x_24 x_23 x_22) (or  (and (= x_24 1) (= x_23 5)) (and (= x_24 2) (= x_23 2)) (and (= x_24 3) (= x_23 0))))) (forall ( (x_25 Int) (x_26 Int) (x_27 Int) ) (=> (and  (mem2 x_25 x_26 x_22) (mem2 x_25 x_27 x_22)) (= x_26 x_27))) (forall ( (x_28 Int) ) (= (and (>= x_28 1) (<= x_28 x_21)) (exists ( (x_29 Int) ) (mem2 x_28 x_29 x_22)))) (forall ( (x_30 Int) ) (=> (exists ( (x_31 Int) ) (mem2 x_31 x_30 x_22)) (mem0 x_30 g_S1_0))))) (forall ( (x_32 Int) (x_33 Int) (x_34 Int) ) (=> (and  (or  (and (= x_33 1) (= x_32 5)) (and (= x_33 2) (= x_32 2)) (and (= x_33 3) (= x_32 0))) (or  (and (= x_34 1) (= x_32 5)) (and (= x_34 2) (= x_32 2)) (and (= x_34 3) (= x_32 0)))) (= x_33 x_34))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_35 Int) ) (and (exists ( (x_36 (P (C Int Real))) ) (and (forall ( (x_37 Real) (x_38 Int) ) (= (mem3 x_38 x_37 x_36) (or  (and (= x_38 1) (= x_37 1.2)) (and (= x_38 2) (= x_37 (- 5.3)))))) (forall ( (x_39 Int) (x_40 Real) (x_41 Real) ) (=> (and  (mem3 x_39 x_40 x_36) (mem3 x_39 x_41 x_36)) (= x_40 x_41))) (forall ( (x_42 Int) ) (= (and (>= x_42 1) (<= x_42 x_35)) (exists ( (x_43 Real) ) (mem3 x_42 x_43 x_36)))) (forall ( (x_44 Real) ) (=> (exists ( (x_45 Int) ) (mem3 x_45 x_44 x_36)) true)))) (forall ( (x_46 Real) (x_47 Int) (x_48 Int) ) (=> (and  (or  (and (= x_47 1) (= x_46 1.2)) (and (= x_47 2) (= x_46 (- 5.3)))) (or  (and (= x_48 1) (= x_46 1.2)) (and (= x_48 2) (= x_46 (- 5.3))))) (= x_47 x_48)))))))
(check-sat)
(exit)
