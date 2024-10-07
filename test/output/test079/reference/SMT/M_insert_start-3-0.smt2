(set-option :print-success false)
(set-logic ALL)
; PO 3 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_5 () Int)
(declare-fun g_c1_4 () Int)
(declare-fun g_empty_seq_2 () (P (C Int Int)))
(declare-fun g_ii_3 () Int)
(declare-fun g_s0_0 () (P (C Int Int)))
(declare-fun g_s1_1 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_s0_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (exists ( (x_14 Int) ) (exists ( (x_15 (P (C Int Int))) ) (and (forall ( (x_16 Int) (x_17 Int) ) (= (mem2 x_17 x_16 x_15) (mem2 x_17 x_16 g_s1_1))) (forall ( (x_18 Int) (x_19 Int) (x_20 Int) ) (=> (and  (mem2 x_18 x_19 x_15) (mem2 x_18 x_20 x_15)) (= x_19 x_20))) (forall ( (x_21 Int) ) (= (and (>= x_21 1) (<= x_21 x_14)) (exists ( (x_22 Int) ) (mem2 x_21 x_22 x_15)))) (forall ( (x_23 Int) ) (=> (exists ( (x_24 Int) ) (mem2 x_24 x_23 x_15)) true))))))
(assert (forall ( (x_25 Int) (x_26 Int) ) (= (mem2 x_26 x_25 g_s1_1) (or  (and (= x_26 1) (= x_25 5)) (and (= x_26 2) (= x_25 4)) (and (= x_26 3) (= x_25 1)) (and (= x_26 4) (= x_25 1)) (and (= x_26 5) (= x_25 2)) (and (= x_26 6) (= x_25 3)) (and (= x_26 7) (= x_25 8))))))
(assert (exists ( (x_27 Int) ) (exists ( (x_28 (P (C Int Int))) ) (and (forall ( (x_29 Int) (x_30 Int) ) (= (mem2 x_30 x_29 x_28) (mem2 x_30 x_29 g_empty_seq_2))) (forall ( (x_31 Int) (x_32 Int) (x_33 Int) ) (=> (and  (mem2 x_31 x_32 x_28) (mem2 x_31 x_33 x_28)) (= x_32 x_33))) (forall ( (x_34 Int) ) (= (and (>= x_34 1) (<= x_34 x_27)) (exists ( (x_35 Int) ) (mem2 x_34 x_35 x_28)))) (forall ( (x_36 Int) ) (=> (exists ( (x_37 Int) ) (mem2 x_37 x_36 x_28)) true))))))
(assert (forall ( (x_38 Int) (x_39 Int) ) (= (mem2 x_39 x_38 g_empty_seq_2) false)))
(assert (<= 0 g_ii_3))
(assert true)
(assert true)
; Global hypotheses
(assert (exists ( (x_85 (P (C Int Int))) ) (and  (forall ( (x_86 Int) (x_87 Int) ) (= (mem2 x_87 x_86 x_85) (and (= x_87 1) (= x_86 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_85) (forall ((x_88 Int) ) (=> (forall ((x_89 Int) ) (=> (forall ( (x_90 Int) ) (= (exists ( (x_91 Int) ) (mem2 x_90 x_91 x_85)) (and (>= x_90 1) (<= x_90 x_89)))) (= x_88 (- g_ii_3 x_89)))) (mem2 x_88 g_c0_5 g_s0_0)))))))
(assert (exists ( (x_92 (P (C Int Int))) ) (and  (forall ( (x_93 Int) (x_94 Int) ) (= (mem2 x_94 x_93 x_92) (and (= x_94 1) (= x_93 g_c1_4)))) (or  (mem2 g_ii_3 g_c0_5 x_92) (forall ((x_95 Int) ) (=> (forall ((x_96 Int) ) (=> (forall ( (x_97 Int) ) (= (exists ( (x_98 Int) ) (mem2 x_97 x_98 x_92)) (and (>= x_97 1) (<= x_97 x_96)))) (= x_95 (- g_ii_3 x_96)))) (mem2 x_95 g_c0_5 g_empty_seq_2)))))))
(assert (exists ( (x_99 (P (C Int Int))) ) (and  (forall ( (x_100 Int) (x_101 Int) ) (= (mem2 x_101 x_100 x_99) (and (= x_101 1) (= x_100 9)))) (or  (forall ((x_102 Int)(x_103 Int) ) (=> (and (= x_102 1) (= x_103 5)) (mem2 x_102 x_103 x_99))) (forall ((x_104 Int)(x_105 Int) ) (=> (and (forall ((x_106 Int) ) (=> (forall ( (x_107 Int) ) (= (exists ( (x_108 Int) ) (mem2 x_107 x_108 x_99)) (and (>= x_107 1) (<= x_107 x_106)))) (= x_104 (- 1 x_106)))) (= x_105 5)) (mem2 x_104 x_105 g_s1_1)))))))
(assert (exists ( (x_109 (P (C Int Int))) ) (and  (forall ( (x_110 Int) (x_111 Int) ) (= (mem2 x_111 x_110 x_109) (and (= x_111 1) (= x_110 9)))) (or  (forall ((x_112 Int)(x_113 Int) ) (=> (and (= x_112 1) (= x_113 5)) (mem2 x_112 x_113 x_109))) (forall ((x_114 Int)(x_115 Int) ) (=> (and (forall ((x_116 Int) ) (=> (forall ( (x_117 Int) ) (= (exists ( (x_118 Int) ) (mem2 x_117 x_118 x_109)) (and (>= x_117 1) (<= x_117 x_116)))) (= x_114 (- 1 x_116)))) (= x_115 5)) (mem2 x_114 x_115 g_s1_1)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_119 (P (C Int Int))) ) (and  (forall ( (x_120 Int) (x_121 Int) ) (= (mem2 x_121 x_120 x_119) (and (= x_121 1) (= x_120 9)))) (or  (forall ((x_122 Int)(x_123 Int) ) (=> (and (= x_122 2) (= x_123 5)) (mem2 x_122 x_123 x_119))) (forall ((x_124 Int)(x_125 Int) ) (=> (and (forall ((x_126 Int) ) (=> (forall ( (x_127 Int) ) (= (exists ( (x_128 Int) ) (mem2 x_127 x_128 x_119)) (and (>= x_127 1) (<= x_127 x_126)))) (= x_124 (- 2 x_126)))) (= x_125 5)) (mem2 x_124 x_125 g_s1_1))))))))
(check-sat)
(exit)
