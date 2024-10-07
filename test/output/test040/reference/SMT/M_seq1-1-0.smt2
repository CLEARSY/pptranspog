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
(assert (and  (exists ( (x_20 Int) ) (exists ( (x_21 (P (C Int Int))) ) (and (forall ( (x_22 Int) (x_23 Int) ) (= (mem2 x_23 x_22 x_21) (or  (and (= x_23 1) (= x_22 5)) (and (= x_23 2) (= x_22 2)) (and (= x_23 3) (= x_22 0))))) (forall ( (x_24 Int) (x_25 Int) (x_26 Int) ) (=> (and  (mem2 x_24 x_25 x_21) (mem2 x_24 x_26 x_21)) (= x_25 x_26))) (forall ( (x_27 Int) ) (= (and (>= x_27 1) (<= x_27 x_20)) (exists ( (x_28 Int) ) (mem2 x_27 x_28 x_21)))) (forall ( (x_29 Int) ) (=> (exists ( (x_30 Int) ) (mem2 x_30 x_29 x_21)) (mem0 x_29 g_S1_0)))))) (not (forall ( (x_31 Int) (x_32 Int) ) (= (or  (and (= x_32 1) (= x_31 5)) (and (= x_32 2) (= x_31 2)) (and (= x_32 3) (= x_31 0))) false)))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_33 Int) ) (exists ( (x_34 (P (C Int Real))) ) (and (forall ( (x_35 Real) (x_36 Int) ) (= (mem3 x_36 x_35 x_34) (or  (and (= x_36 1) (= x_35 1.2)) (and (= x_36 2) (= x_35 (- 5.3)))))) (forall ( (x_37 Int) (x_38 Real) (x_39 Real) ) (=> (and  (mem3 x_37 x_38 x_34) (mem3 x_37 x_39 x_34)) (= x_38 x_39))) (forall ( (x_40 Int) ) (= (and (>= x_40 1) (<= x_40 x_33)) (exists ( (x_41 Real) ) (mem3 x_40 x_41 x_34)))) (forall ( (x_42 Real) ) (=> (exists ( (x_43 Int) ) (mem3 x_43 x_42 x_34)) true))))) (not (forall ( (x_44 Real) (x_45 Int) ) (= (or  (and (= x_45 1) (= x_44 1.2)) (and (= x_45 2) (= x_44 (- 5.3)))) false))))))
(check-sat)
(exit)
