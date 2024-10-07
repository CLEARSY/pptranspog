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
(declare-sort S0 2 )
(declare-fun g_get_res_set_1 () (P (C (P Int) (S0 (P Int) (P Bool)))))
(declare-fun g_ii_2 () Int)
(declare-fun g_res_set_0 () (P (S0 (P Int) (P Bool))))
(declare-fun mem2 ( (P Int) (P Bool) (P (S0 (P Int) (P Bool)))) Bool)
(declare-fun mem3 ( Bool (P Bool)) Bool)
(declare-fun mem4 ( (P Int) (P Int) (P Bool) (P (C (P Int) (S0 (P Int) (P Bool))))) Bool)
; Defines
(assert (forall ( (x_3 (P Int)) (x_4 (P Bool)) ) (= (mem2 x_3 x_4 g_res_set_0) (and  (forall ( (x_5 Int) ) (=> (mem0 x_5 x_3) (and (>= x_5 0) (<= x_5 20)))) (forall ( (x_6 Bool) ) (=> (mem3 x_6 x_4) true))))))
(assert (exists ( (x_7 (P (C (P Int) (S0 (P Int) (P Bool))))) ) (and (forall ( (x_8 (P Int)) (x_9 (P Bool)) (x_10 (P Int)) ) (= (mem4 x_10 x_8 x_9 x_7) (mem4 x_10 x_8 x_9 g_get_res_set_1))) (forall ( (x_11 (P Int)) (x_12 (P Int)) (x_13 (P Bool)) (x_14 (P Int)) (x_15 (P Bool)) ) (=> (and  (mem4 x_11 x_12 x_13 x_7) (mem4 x_11 x_14 x_15 x_7)) (and  (forall ( (x_16 Int) ) (= (mem0 x_16 x_12) (mem0 x_16 x_14))) (forall ( (x_17 Bool) ) (= (mem3 x_17 x_13) (mem3 x_17 x_15)))))) (forall ( (x_18 (P Int)) ) (= (forall ( (x_19 Int) ) (=> (mem0 x_19 x_18) (and (>= x_19 0) (<= x_19 20)))) (exists ( (x_20 (P Int)) (x_21 (P Bool)) ) (mem4 x_18 x_20 x_21 x_7)))) (forall ( (x_22 (P Int)) (x_23 (P Bool)) ) (=> (exists ( (x_24 (P Int)) ) (mem4 x_24 x_22 x_23 x_7)) (mem2 x_22 x_23 g_res_set_0))))))
(assert (forall ( (x_25 (P Int)) (x_26 (P Bool)) (x_27 (P Int)) ) (= (mem4 x_27 x_25 x_26 g_get_res_set_1) (and  (forall ( (x_28 Int) ) (=> (mem0 x_28 x_27) (and (>= x_28 0) (<= x_28 20)))) (and  (forall ( (x_29 Int) ) (= (mem0 x_29 x_25) (mem0 x_29 x_27))) (forall ( (x_30 Bool) ) (= (mem3 x_30 x_26) (= x_30 true))))))))
(assert true)
(assert true)
; Global hypotheses
(assert (forall ((x_35 (P Int))(x_36 (P Bool)) ) (=> (forall ((x_37 (P Int)) ) (=> (forall ( (x_38 Int) ) (= (mem0 x_38 x_37) (and (>= x_38 0) (<= x_38 g_ii_2)))) (mem4 x_37 x_35 x_36 g_get_res_set_1))) (mem0 g_ii_2 x_35))))
; Local hypotheses
; Goal
(assert (not (forall ((x_39 (P Int))(x_40 (P Bool)) ) (=> (forall ((x_42 (P Int)) ) (=> (forall ( (x_43 Int) ) (= (mem0 x_43 x_42) (= x_43 12))) (mem4 x_42 x_39 x_40 g_get_res_set_1))) (forall ((x_41 Int) ) (=> (= x_41 12) (mem0 x_41 x_39)))))))
(check-sat)
(exit)
