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
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_tt_2 () (P (C Int (P Int))))
(declare-fun mem2 ( Int (P Int) (P (C Int (P Int)))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 (P Int)) (x_6 Int) ) (=> (mem2 x_6 x_5 g_tt_2) (and true (forall ( (x_7 Int) ) (=> (mem0 x_7 x_5) true))))))
(assert (forall ( (x_8 (P Int)) (x_9 Int) ) (= (mem2 x_9 x_8 g_tt_2) (or  (and (= x_9 2) (forall ( (x_10 Int) ) (= (mem0 x_10 x_8) (or  (= x_10 6) (= x_10 7))))) (and (= x_9 5) (forall ( (x_11 Int) ) (= (mem0 x_11 x_8) (= x_11 9)))) (and (= x_9 7) (forall ( (x_12 Int) ) (= (mem0 x_12 x_8) (= x_12 9)))) (and (= x_9 5) (forall ( (x_13 Int) ) (= (mem0 x_13 x_8) (= x_13 3))))))))
; Global hypotheses
(assert (forall ( (x_16 Int) (x_17 Int) ) (=> (= x_16 (+ x_17 1)) (and (mem0 x_17 g_s0_0) (mem0 x_16 g_s1_1)))))
; Local hypotheses
; Goal
(assert (not (forall ( (x_18 (P Int)) (x_19 Int) ) (=> (mem2 x_19 x_18 g_tt_2) (and (or  (= x_19 2) (= x_19 5) (= x_19 7)) (forall ( (x_20 Int) ) (=> (mem0 x_20 x_18) (and (>= x_20 3) (<= x_20 6)))))))))
(check-sat)
(exit)
