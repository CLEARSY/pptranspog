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
(assert (exists ( (x_18 Int) ) (exists ( (x_19 (P (C Int Int))) ) (and (forall ( (x_20 Int) (x_21 Int) ) (= (mem2 x_21 x_20 x_19) (or  (and (= x_21 1) (= x_20 5)) (and (= x_21 2) (= x_20 2)) (and (= x_21 3) (= x_20 0))))) (forall ( (x_22 Int) (x_23 Int) (x_24 Int) ) (=> (and  (mem2 x_22 x_23 x_19) (mem2 x_22 x_24 x_19)) (= x_23 x_24))) (forall ( (x_25 Int) ) (= (and (>= x_25 1) (<= x_25 x_18)) (exists ( (x_26 Int) ) (mem2 x_25 x_26 x_19)))) (forall ( (x_27 Int) ) (=> (exists ( (x_28 Int) ) (mem2 x_28 x_27 x_19)) (mem0 x_27 g_S1_0)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_29 Int) ) (exists ( (x_30 (P (C Int Real))) ) (and (forall ( (x_31 Real) (x_32 Int) ) (= (mem3 x_32 x_31 x_30) (or  (and (= x_32 1) (= x_31 1.2)) (and (= x_32 2) (= x_31 (- 5.3)))))) (forall ( (x_33 Int) (x_34 Real) (x_35 Real) ) (=> (and  (mem3 x_33 x_34 x_30) (mem3 x_33 x_35 x_30)) (= x_34 x_35))) (forall ( (x_36 Int) ) (= (and (>= x_36 1) (<= x_36 x_29)) (exists ( (x_37 Real) ) (mem3 x_36 x_37 x_30)))) (forall ( (x_38 Real) ) (=> (exists ( (x_39 Int) ) (mem3 x_39 x_38 x_30)) true)))))))
(check-sat)
(exit)
