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
(assert (and (exists ( (x_58 (P (C Int Int))) ) (and (forall ( (x_59 Int) (x_60 Int) ) (= (mem2 x_60 x_59 x_58) (mem2 x_60 x_59 g_rel1_0))) (forall ( (x_61 Int) (x_62 Int) (x_63 Int) ) (=> (and  (mem2 x_61 x_62 x_58) (mem2 x_61 x_63 x_58)) (= x_62 x_63))) (forall ( (x_64 Int) ) (= (and (>= x_64 0) (<= x_64 7)) (exists ( (x_65 Int) ) (mem2 x_64 x_65 x_58)))) (forall ( (x_66 Int) ) (=> (exists ( (x_67 Int) ) (mem2 x_67 x_66 x_58)) (and (>= x_66 0) (<= x_66 10)))))) (forall ( (x_68 Int) ) (=> (and (>= x_68 0) (<= x_68 10)) (exists ( (x_69 Int) ) (mem2 x_69 x_68 g_rel1_0))))))
(assert (and (exists ( (x_70 (P (C Int Int))) ) (and (forall ( (x_71 Int) (x_72 Int) ) (= (mem2 x_72 x_71 x_70) (mem2 x_72 x_71 g_fun1_1))) (forall ( (x_73 Int) (x_74 Int) (x_75 Int) ) (=> (and  (mem2 x_73 x_74 x_70) (mem2 x_73 x_75 x_70)) (= x_74 x_75))) (forall ( (x_76 Int) ) (= (exists ( (x_77 Int) ) (mem2 x_76 x_77 g_fun1_1)) (exists ( (x_78 Int) ) (mem2 x_76 x_78 x_70)))) (forall ( (x_79 Int) ) (=> (exists ( (x_80 Int) ) (mem2 x_80 x_79 x_70)) (exists ( (x_81 Int) ) (mem2 x_81 x_79 g_fun1_1)))))) (forall ( (x_82 Int) ) (=> (exists ( (x_83 Int) ) (mem2 x_83 x_82 g_fun1_1)) (exists ( (x_84 Int) ) (mem2 x_84 x_82 g_fun1_1))))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_85 (P (C Int Int))) ) (and (forall ( (x_86 Int) (x_87 Int) ) (= (mem2 x_87 x_86 x_85) (mem2 x_87 x_86 g_fun2_2))) (forall ( (x_88 Int) (x_89 Int) (x_90 Int) ) (=> (and  (mem2 x_88 x_89 x_85) (mem2 x_88 x_90 x_85)) (= x_89 x_90))) (forall ( (x_91 Int) ) (= true (exists ( (x_92 Int) ) (mem2 x_91 x_92 x_85)))) (forall ( (x_93 Int) ) (=> (exists ( (x_94 Int) ) (mem2 x_94 x_93 x_85)) true)))) (forall ( (x_95 Int) ) (=> true (exists ( (x_96 Int) ) (mem2 x_96 x_95 g_fun2_2)))))))
(check-sat)
(exit)
