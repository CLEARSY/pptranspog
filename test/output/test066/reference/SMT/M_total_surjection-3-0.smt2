(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (and (exists ( (x_97 (P (C Int Int))) ) (and (forall ( (x_98 Int) (x_99 Int) ) (= (mem2 x_99 x_98 x_97) (mem2 x_99 x_98 g_rel1_0))) (forall ( (x_100 Int) (x_101 Int) (x_102 Int) ) (=> (and  (mem2 x_100 x_101 x_97) (mem2 x_100 x_102 x_97)) (= x_101 x_102))) (forall ( (x_103 Int) ) (= (and (>= x_103 0) (<= x_103 7)) (exists ( (x_104 Int) ) (mem2 x_103 x_104 x_97)))) (forall ( (x_105 Int) ) (=> (exists ( (x_106 Int) ) (mem2 x_106 x_105 x_97)) (and (>= x_105 0) (<= x_105 10)))))) (forall ( (x_107 Int) ) (=> (and (>= x_107 0) (<= x_107 10)) (exists ( (x_108 Int) ) (mem2 x_108 x_107 g_rel1_0))))))
(assert (and (exists ( (x_109 (P (C Int Int))) ) (and (forall ( (x_110 Int) (x_111 Int) ) (= (mem2 x_111 x_110 x_109) (mem2 x_111 x_110 g_fun1_1))) (forall ( (x_112 Int) (x_113 Int) (x_114 Int) ) (=> (and  (mem2 x_112 x_113 x_109) (mem2 x_112 x_114 x_109)) (= x_113 x_114))) (forall ( (x_115 Int) ) (= (exists ( (x_116 Int) ) (mem2 x_115 x_116 g_fun1_1)) (exists ( (x_117 Int) ) (mem2 x_115 x_117 x_109)))) (forall ( (x_118 Int) ) (=> (exists ( (x_119 Int) ) (mem2 x_119 x_118 x_109)) (exists ( (x_120 Int) ) (mem2 x_120 x_118 g_fun1_1)))))) (forall ( (x_121 Int) ) (=> (exists ( (x_122 Int) ) (mem2 x_122 x_121 g_fun1_1)) (exists ( (x_123 Int) ) (mem2 x_123 x_121 g_fun1_1))))))
(assert (and (exists ( (x_124 (P (C Int Int))) ) (and (forall ( (x_125 Int) (x_126 Int) ) (= (mem2 x_126 x_125 x_124) (mem2 x_126 x_125 g_fun2_2))) (forall ( (x_127 Int) (x_128 Int) (x_129 Int) ) (=> (and  (mem2 x_127 x_128 x_124) (mem2 x_127 x_129 x_124)) (= x_128 x_129))) (forall ( (x_130 Int) ) (= true (exists ( (x_131 Int) ) (mem2 x_130 x_131 x_124)))) (forall ( (x_132 Int) ) (=> (exists ( (x_133 Int) ) (mem2 x_133 x_132 x_124)) true)))) (forall ( (x_134 Int) ) (=> true (exists ( (x_135 Int) ) (mem2 x_135 x_134 g_fun2_2))))))
; Local hypotheses
; Goal
(assert (not (and (exists ( (x_136 (P (C Int Int))) ) (and (forall ( (x_137 Int) (x_138 Int) ) (= (mem2 x_138 x_137 x_136) (mem2 x_138 x_137 g_fun3_3))) (forall ( (x_139 Int) (x_140 Int) (x_141 Int) ) (=> (and  (mem2 x_139 x_140 x_136) (mem2 x_139 x_141 x_136)) (= x_140 x_141))) (forall ( (x_142 Int) ) (= true (exists ( (x_143 Int) ) (mem2 x_142 x_143 x_136)))) (forall ( (x_144 Int) ) (=> (exists ( (x_145 Int) ) (mem2 x_145 x_144 x_136)) true)))) (forall ( (x_146 Int) ) (=> true (exists ( (x_147 Int) ) (mem2 x_147 x_146 g_fun3_3)))))))
(check-sat)
(exit)
