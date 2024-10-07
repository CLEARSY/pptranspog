(set-option :print-success false)
(set-logic ALL)
; PO 2 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_2 () Int)
(declare-fun g_ii_1 () Int)
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (<= 0 g_ii_1))
(assert true)
; Global hypotheses
(assert (forall ( (x_63 Int) (x_64 Int) ) (= (or  (and (= x_64 1) (= x_63 5)) (and (= x_64 2) (= x_63 2)) (and (= x_64 3) (= x_63 0))) (and  (forall ((x_66 Int) ) (=> (forall ( (x_67 Int) ) (= (exists ( (x_68 Int) ) (or  (and (= x_67 1) (= x_68 0)) (and (= x_67 2) (= x_68 2)) (and (= x_67 3) (= x_68 5)))) (and (>= x_67 1) (<= x_67 x_66)))) (and (>= x_64 1) (<= x_64 x_66)))) (or  (and (forall ((x_69 Int) ) (=> (forall ( (x_70 Int) ) (= (exists ( (x_71 Int) ) (or  (and (= x_70 1) (= x_71 0)) (and (= x_70 2) (= x_71 2)) (and (= x_70 3) (= x_71 5)))) (and (>= x_70 1) (<= x_70 x_69)))) (= (+ (- x_69 x_64) 1) 1))) (= x_63 0)) (and (forall ((x_72 Int) ) (=> (forall ( (x_73 Int) ) (= (exists ( (x_74 Int) ) (or  (and (= x_73 1) (= x_74 0)) (and (= x_73 2) (= x_74 2)) (and (= x_73 3) (= x_74 5)))) (and (>= x_73 1) (<= x_73 x_72)))) (= (+ (- x_72 x_64) 1) 2))) (= x_63 2)) (and (forall ((x_75 Int) ) (=> (forall ( (x_76 Int) ) (= (exists ( (x_77 Int) ) (or  (and (= x_76 1) (= x_77 0)) (and (= x_76 2) (= x_77 2)) (and (= x_76 3) (= x_77 5)))) (and (>= x_76 1) (<= x_76 x_75)))) (= (+ (- x_75 x_64) 1) 3))) (= x_63 5)))))))
(assert (and  (forall ((x_79 Int) ) (=> (forall ( (x_80 Int) ) (= (exists ( (x_81 Int) ) (or  (and (= x_80 1) (= x_81 3)) (and (= x_80 2) (= x_81 7)) (and (= x_80 3) (= x_81 2)) (and (= x_80 4) (= x_81 1)) (and (= x_80 5) (= x_81 4)))) (and (>= x_80 1) (<= x_80 x_79)))) (and (>= 2 1) (<= 2 x_79)))) (or  (and (forall ((x_82 Int) ) (=> (forall ( (x_83 Int) ) (= (exists ( (x_84 Int) ) (or  (and (= x_83 1) (= x_84 3)) (and (= x_83 2) (= x_84 7)) (and (= x_83 3) (= x_84 2)) (and (= x_83 4) (= x_84 1)) (and (= x_83 5) (= x_84 4)))) (and (>= x_83 1) (<= x_83 x_82)))) (= (+ (- x_82 2) 1) 1))) (= 1 3)) (and (forall ((x_85 Int) ) (=> (forall ( (x_86 Int) ) (= (exists ( (x_87 Int) ) (or  (and (= x_86 1) (= x_87 3)) (and (= x_86 2) (= x_87 7)) (and (= x_86 3) (= x_87 2)) (and (= x_86 4) (= x_87 1)) (and (= x_86 5) (= x_87 4)))) (and (>= x_86 1) (<= x_86 x_85)))) (= (+ (- x_85 2) 1) 2))) (= 1 7)) (and (forall ((x_88 Int) ) (=> (forall ( (x_89 Int) ) (= (exists ( (x_90 Int) ) (or  (and (= x_89 1) (= x_90 3)) (and (= x_89 2) (= x_90 7)) (and (= x_89 3) (= x_90 2)) (and (= x_89 4) (= x_90 1)) (and (= x_89 5) (= x_90 4)))) (and (>= x_89 1) (<= x_89 x_88)))) (= (+ (- x_88 2) 1) 3))) (= 1 2)) (and (forall ((x_91 Int) ) (=> (forall ( (x_92 Int) ) (= (exists ( (x_93 Int) ) (or  (and (= x_92 1) (= x_93 3)) (and (= x_92 2) (= x_93 7)) (and (= x_92 3) (= x_93 2)) (and (= x_92 4) (= x_93 1)) (and (= x_92 5) (= x_93 4)))) (and (>= x_92 1) (<= x_92 x_91)))) (= (+ (- x_91 2) 1) 4))) (= 1 1)) (and (forall ((x_94 Int) ) (=> (forall ( (x_95 Int) ) (= (exists ( (x_96 Int) ) (or  (and (= x_95 1) (= x_96 3)) (and (= x_95 2) (= x_96 7)) (and (= x_95 3) (= x_96 2)) (and (= x_95 4) (= x_96 1)) (and (= x_95 5) (= x_96 4)))) (and (>= x_95 1) (<= x_95 x_94)))) (= (+ (- x_94 2) 1) 5))) (= 1 4)))))
; Local hypotheses
; Goal
(assert (not (and  (forall ((x_98 Int) ) (=> (forall ( (x_99 Int) ) (= (exists ( (x_100 Int) ) (mem2 x_99 x_100 g_ss_0)) (and (>= x_99 1) (<= x_99 x_98)))) (and (>= g_ii_1 1) (<= g_ii_1 x_98)))) (forall ((x_101 Int) ) (=> (forall ((x_102 Int) ) (=> (forall ( (x_103 Int) ) (= (exists ( (x_104 Int) ) (mem2 x_103 x_104 g_ss_0)) (and (>= x_103 1) (<= x_103 x_102)))) (= x_101 (+ (- x_102 g_ii_1) 1)))) (mem2 x_101 g_c0_2 g_ss_0))))))
(check-sat)
(exit)
