(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(declare-fun g_fun1_1 () (P (C Int Int)))
(declare-fun g_fun2_2 () (P (C Int Int)))
(declare-fun g_fun3_3 () (P (C Int Int)))
(declare-fun g_fun4_4 () (P (C Real Real)))
(declare-fun g_rel1_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Real Real (P (C Real Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) (x_4 Int) ) (= (mem2 x_4 x_3 g_rel1_0) (or  (and (= x_4 2) (= x_3 7)) (and (= x_4 5) (= x_3 9)) (and (= x_4 2) (= x_3 6)) (and (= x_4 7) (= x_3 9)) (and (= x_4 5) (= x_3 3))))))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_fun1_1) (and true true))))
(assert (forall ( (x_7 Int) ) (= (exists ( (x_8 Int) ) (mem2 x_7 x_8 g_fun1_1)) (and (>= x_7 0) (<= x_7 2)))))
(assert (forall ( (x_9 Int) ) (= (exists ( (x_10 Int) ) (mem2 x_10 x_9 g_fun1_1)) (and (>= x_9 1) (<= x_9 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_11 Int) ) (mem2 l_xx x_11 g_fun1_1)) (forall ((x_12 Int) ) (=> (= x_12 (+ l_xx 1)) (mem2 l_xx x_12 g_fun1_1))))))
(assert (forall ( (x_13 Int) (x_14 Int) ) (= (mem2 x_14 x_13 g_fun2_2) (and  (and (>= x_14 0) (<= x_14 2)) (= x_13 (+ x_14 1))))))
(assert (forall ( (x_15 Int) (x_16 Int) ) (= (mem2 x_16 x_15 g_fun3_3) (and  (and (>= x_16 0) (<= x_16 2)) (= x_15 (+ x_16 1))))))
(assert (forall ( (x_17 Real) (x_18 Real) ) (=> (mem3 x_18 x_17 g_fun4_4) (and true true))))
; Global hypotheses
(assert (exists ( (x_51 (P (C Int Int))) ) (and (forall ( (x_52 Int) (x_53 Int) ) (= (mem2 x_53 x_52 x_51) (mem2 x_53 x_52 g_rel1_0))) (forall ( (x_54 Int) (x_55 Int) (x_56 Int) ) (=> (and  (mem2 x_54 x_55 x_51) (mem2 x_54 x_56 x_51)) (= x_55 x_56))) (forall ( (x_57 Int) ) (= (and (>= x_57 0) (<= x_57 7)) (exists ( (x_58 Int) ) (mem2 x_57 x_58 x_51)))) (forall ( (x_59 Int) ) (=> (exists ( (x_60 Int) ) (mem2 x_60 x_59 x_51)) (and (>= x_59 0) (<= x_59 10)))))))
(assert (exists ( (x_61 (P (C Int Int))) ) (and (forall ( (x_62 Int) (x_63 Int) ) (= (mem2 x_63 x_62 x_61) (mem2 x_63 x_62 g_fun1_1))) (forall ( (x_64 Int) (x_65 Int) (x_66 Int) ) (=> (and  (mem2 x_64 x_65 x_61) (mem2 x_64 x_66 x_61)) (= x_65 x_66))) (forall ( (x_67 Int) ) (= (exists ( (x_68 Int) ) (mem2 x_67 x_68 g_fun1_1)) (exists ( (x_69 Int) ) (mem2 x_67 x_69 x_61)))) (forall ( (x_70 Int) ) (=> (exists ( (x_71 Int) ) (mem2 x_71 x_70 x_61)) (exists ( (x_72 Int) ) (mem2 x_72 x_70 g_fun1_1)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_73 (P (C Int Int))) ) (and (forall ( (x_74 Int) (x_75 Int) ) (= (mem2 x_75 x_74 x_73) (mem2 x_75 x_74 g_fun2_2))) (forall ( (x_76 Int) (x_77 Int) (x_78 Int) ) (=> (and  (mem2 x_76 x_77 x_73) (mem2 x_76 x_78 x_73)) (= x_77 x_78))) (forall ( (x_79 Int) ) (= true (exists ( (x_80 Int) ) (mem2 x_79 x_80 x_73)))) (forall ( (x_81 Int) ) (=> (exists ( (x_82 Int) ) (mem2 x_82 x_81 x_73)) true))))))
(check-sat)
(exit)
