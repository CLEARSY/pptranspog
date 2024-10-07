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
(declare-fun g_ii_1 () Int)
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (<= 0 g_ii_1))
(assert true)
; Global hypotheses
(assert (forall ( (x_29 Int) (x_30 Int) ) (= (or  (and (= x_30 1) (= x_29 5)) (and (= x_30 2) (= x_29 2)) (and (= x_30 3) (= x_29 0))) (and  (forall ((x_32 Int) ) (=> (forall ( (x_33 Int) ) (= (exists ( (x_34 Int) ) (or  (and (= x_33 1) (= x_34 0)) (and (= x_33 2) (= x_34 2)) (and (= x_33 3) (= x_34 5)))) (and (>= x_33 1) (<= x_33 x_32)))) (and (>= x_30 1) (<= x_30 x_32)))) (or  (and (forall ((x_35 Int) ) (=> (forall ( (x_36 Int) ) (= (exists ( (x_37 Int) ) (or  (and (= x_36 1) (= x_37 0)) (and (= x_36 2) (= x_37 2)) (and (= x_36 3) (= x_37 5)))) (and (>= x_36 1) (<= x_36 x_35)))) (= (+ (- x_35 x_30) 1) 1))) (= x_29 0)) (and (forall ((x_38 Int) ) (=> (forall ( (x_39 Int) ) (= (exists ( (x_40 Int) ) (or  (and (= x_39 1) (= x_40 0)) (and (= x_39 2) (= x_40 2)) (and (= x_39 3) (= x_40 5)))) (and (>= x_39 1) (<= x_39 x_38)))) (= (+ (- x_38 x_30) 1) 2))) (= x_29 2)) (and (forall ((x_41 Int) ) (=> (forall ( (x_42 Int) ) (= (exists ( (x_43 Int) ) (or  (and (= x_42 1) (= x_43 0)) (and (= x_42 2) (= x_43 2)) (and (= x_42 3) (= x_43 5)))) (and (>= x_42 1) (<= x_42 x_41)))) (= (+ (- x_41 x_30) 1) 3))) (= x_29 5)))))))
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_45 Int) ) (=> (forall ( (x_46 Int) ) (= (exists ( (x_47 Int) ) (or  (and (= x_46 1) (= x_47 3)) (and (= x_46 2) (= x_47 7)) (and (= x_46 3) (= x_47 2)) (and (= x_46 4) (= x_47 1)) (and (= x_46 5) (= x_47 4)))) (and (>= x_46 1) (<= x_46 x_45)))) (and (>= 2 1) (<= 2 x_45)))) (or  (and (forall ((x_48 Int) ) (=> (forall ( (x_49 Int) ) (= (exists ( (x_50 Int) ) (or  (and (= x_49 1) (= x_50 3)) (and (= x_49 2) (= x_50 7)) (and (= x_49 3) (= x_50 2)) (and (= x_49 4) (= x_50 1)) (and (= x_49 5) (= x_50 4)))) (and (>= x_49 1) (<= x_49 x_48)))) (= (+ (- x_48 2) 1) 1))) (= 1 3)) (and (forall ((x_51 Int) ) (=> (forall ( (x_52 Int) ) (= (exists ( (x_53 Int) ) (or  (and (= x_52 1) (= x_53 3)) (and (= x_52 2) (= x_53 7)) (and (= x_52 3) (= x_53 2)) (and (= x_52 4) (= x_53 1)) (and (= x_52 5) (= x_53 4)))) (and (>= x_52 1) (<= x_52 x_51)))) (= (+ (- x_51 2) 1) 2))) (= 1 7)) (and (forall ((x_54 Int) ) (=> (forall ( (x_55 Int) ) (= (exists ( (x_56 Int) ) (or  (and (= x_55 1) (= x_56 3)) (and (= x_55 2) (= x_56 7)) (and (= x_55 3) (= x_56 2)) (and (= x_55 4) (= x_56 1)) (and (= x_55 5) (= x_56 4)))) (and (>= x_55 1) (<= x_55 x_54)))) (= (+ (- x_54 2) 1) 3))) (= 1 2)) (and (forall ((x_57 Int) ) (=> (forall ( (x_58 Int) ) (= (exists ( (x_59 Int) ) (or  (and (= x_58 1) (= x_59 3)) (and (= x_58 2) (= x_59 7)) (and (= x_58 3) (= x_59 2)) (and (= x_58 4) (= x_59 1)) (and (= x_58 5) (= x_59 4)))) (and (>= x_58 1) (<= x_58 x_57)))) (= (+ (- x_57 2) 1) 4))) (= 1 1)) (and (forall ((x_60 Int) ) (=> (forall ( (x_61 Int) ) (= (exists ( (x_62 Int) ) (or  (and (= x_61 1) (= x_62 3)) (and (= x_61 2) (= x_62 7)) (and (= x_61 3) (= x_62 2)) (and (= x_61 4) (= x_62 1)) (and (= x_61 5) (= x_62 4)))) (and (>= x_61 1) (<= x_61 x_60)))) (= (+ (- x_60 2) 1) 5))) (= 1 4))))))
(check-sat)
(exit)
