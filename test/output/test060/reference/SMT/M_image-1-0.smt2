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
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_tt_3 () (P (C Int (P Int))))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int (P Int) (P (C Int (P Int)))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 (P Int)) (x_8 Int) ) (=> (mem3 x_8 x_7 g_tt_3) (and true (forall ( (x_9 Int) ) (=> (mem0 x_9 x_7) true))))))
(assert (forall ( (x_10 (P Int)) (x_11 Int) ) (= (mem3 x_11 x_10 g_tt_3) (or  (and (= x_11 2) (forall ( (x_12 Int) ) (= (mem0 x_12 x_10) (or  (= x_12 6) (= x_12 7))))) (and (= x_11 5) (forall ( (x_13 Int) ) (= (mem0 x_13 x_10) (= x_13 9)))) (and (= x_11 7) (forall ( (x_14 Int) ) (= (mem0 x_14 x_10) (= x_14 9)))) (and (= x_11 5) (forall ( (x_15 Int) ) (= (mem0 x_15 x_10) (= x_15 3))))))))
(assert true)
(assert true)
; Global hypotheses
(assert (exists ( (x_17 Int) ) (and  (and (>= x_17 g_c0_4) (<= x_17 g_c1_5)) (mem2 x_17 g_c0_4 g_rr_2))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_18 Int) ) (and  false (forall ((x_19 (P Int)) ) (=> (forall ( (x_20 Int) ) (= (mem0 x_20 x_19) (= x_20 g_c0_4))) (mem3 x_18 x_19 g_tt_3)))))))
(check-sat)
(exit)
