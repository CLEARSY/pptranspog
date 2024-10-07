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
(declare-fun g_c0_4 () Int)
(declare-fun g_c1_5 () Int)
(declare-fun g_rr_2 () (P (C Int (P Int))))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_tt_3 () (P (C Int (P Int))))
(declare-fun mem2 ( Int (P Int) (P (C Int (P Int)))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 (P Int)) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (forall ( (x_7 Int) ) (=> (mem0 x_7 x_5) (mem0 x_7 g_s1_1)))))))
(assert (forall ( (x_8 (P Int)) (x_9 Int) ) (=> (mem2 x_9 x_8 g_tt_3) (and true (forall ( (x_10 Int) ) (=> (mem0 x_10 x_8) true))))))
(assert (forall ( (x_11 (P Int)) (x_12 Int) ) (= (mem2 x_12 x_11 g_tt_3) (or  (and (= x_12 2) (forall ( (x_13 Int) ) (= (mem0 x_13 x_11) (or  (= x_13 6) (= x_13 7))))) (and (= x_12 5) (forall ( (x_14 Int) ) (= (mem0 x_14 x_11) (= x_14 9)))) (and (= x_12 7) (forall ( (x_15 Int) ) (= (mem0 x_15 x_11) (= x_15 9)))) (and (= x_12 5) (forall ( (x_16 Int) ) (= (mem0 x_16 x_11) (= x_16 3))))))))
(assert true)
(assert true)
; Global hypotheses
(assert (and (exists ( (x_19 (P Int)) ) (mem2 g_c0_4 x_19 g_rr_2)) (forall ((x_20 (P Int)) ) (=> (mem2 g_c0_4 x_20 g_rr_2) (mem0 g_c1_5 x_20)))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_21 (P Int)) ) (forall ((x_22 Int) ) (=> (= x_22 5) (mem2 x_22 x_21 g_tt_3)))) (forall ((x_23 (P Int))(x_24 Int) ) (=> (and (forall ((x_25 Int) ) (=> (= x_25 5) (mem2 x_25 x_23 g_tt_3))) (= x_24 9)) (mem0 x_24 x_23))))))
(check-sat)
(exit)
