(set-option :print-success false)
(set-logic ALL)
; PO 4 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (= (mem0 x_5 g_S1_0) (= x_5 1))))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (or  (= x_6 1) (= x_6 2) (= x_6 3)))))
; Global hypotheses
(assert (and  (forall ((x_28 Int) ) (=> (= x_28 3) (mem0 x_28 g_S2_1))) (forall ( (x_27 Int) ) (=> (mem0 x_27 g_S2_1) (<= 3 x_27)))))
(assert (and  (forall ((x_30 Int) ) (=> (= x_30 1) (mem0 x_30 g_S2_1))) (forall ( (x_29 Int) ) (=> (mem0 x_29 g_S2_1) (>= 1 x_29)))))
(assert (and  (forall ((x_32 Int) ) (=> (= x_32 1) (mem0 x_32 g_S2_1))) (forall ( (x_31 Int) ) (=> (mem0 x_31 g_S2_1) (<= 1 x_31)))))
(assert (and  (forall ((x_34 Int) ) (=> (= x_34 3) (mem0 x_34 g_S2_1))) (forall ( (x_33 Int) ) (=> (mem0 x_33 g_S2_1) (>= 3 x_33)))))
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_36 Int) ) (=> (and  (mem0 x_36 g_S1_0) (forall ( (x_37 Int) ) (=> (mem0 x_37 g_S1_0) (<= x_36 x_37)))) (mem0 x_36 g_S1_0))) (forall ( (x_35 Int) ) (=> (mem0 x_35 g_S1_0) (forall ((x_38 Int) ) (=> (and  (mem0 x_38 g_S1_0) (forall ( (x_39 Int) ) (=> (mem0 x_39 g_S1_0) (<= x_38 x_39)))) (>= x_38 x_35))))))))
(check-sat)
(exit)
