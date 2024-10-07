(set-option :print-success false)
(set-logic ALL)
; PO 4 0
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
(assert (and (and (forall ( (x_105 Int) (x_106 Int) ) (=> (mem2 x_106 x_105 g_rel1_0) (and (and (>= x_106 0) (<= x_106 7)) (and (>= x_105 0) (<= x_105 10))))) (forall ( (x_107 Int) (x_108 Int) (x_109 Int) ) (=> (and  (mem2 x_107 x_108 g_rel1_0) (mem2 x_107 x_109 g_rel1_0)) (= x_108 x_109)))) (forall ( (x_110 Int) (x_111 Int) (x_112 Int) ) (=> (and  (mem2 x_111 x_110 g_rel1_0) (mem2 x_112 x_110 g_rel1_0)) (= x_111 x_112)))))
(assert (and (and (forall ( (x_113 Int) (x_114 Int) ) (=> (mem2 x_114 x_113 g_fun1_1) (and (exists ( (x_115 Int) ) (mem2 x_114 x_115 g_fun1_1)) (exists ( (x_116 Int) ) (mem2 x_116 x_113 g_fun1_1))))) (forall ( (x_117 Int) (x_118 Int) (x_119 Int) ) (=> (and  (mem2 x_117 x_118 g_fun1_1) (mem2 x_117 x_119 g_fun1_1)) (= x_118 x_119)))) (forall ( (x_120 Int) (x_121 Int) (x_122 Int) ) (=> (and  (mem2 x_121 x_120 g_fun1_1) (mem2 x_122 x_120 g_fun1_1)) (= x_121 x_122)))))
(assert (and (and (forall ( (x_123 Int) (x_124 Int) ) (=> (mem2 x_124 x_123 g_fun2_2) (and true true))) (forall ( (x_125 Int) (x_126 Int) (x_127 Int) ) (=> (and  (mem2 x_125 x_126 g_fun2_2) (mem2 x_125 x_127 g_fun2_2)) (= x_126 x_127)))) (forall ( (x_128 Int) (x_129 Int) (x_130 Int) ) (=> (and  (mem2 x_129 x_128 g_fun2_2) (mem2 x_130 x_128 g_fun2_2)) (= x_129 x_130)))))
(assert (and (and (forall ( (x_131 Int) (x_132 Int) ) (=> (mem2 x_132 x_131 g_fun3_3) (and true true))) (forall ( (x_133 Int) (x_134 Int) (x_135 Int) ) (=> (and  (mem2 x_133 x_134 g_fun3_3) (mem2 x_133 x_135 g_fun3_3)) (= x_134 x_135)))) (forall ( (x_136 Int) (x_137 Int) (x_138 Int) ) (=> (and  (mem2 x_137 x_136 g_fun3_3) (mem2 x_138 x_136 g_fun3_3)) (= x_137 x_138)))))
; Local hypotheses
; Goal
(assert (not (and (and (forall ( (x_139 Real) (x_140 Real) ) (=> (mem3 x_140 x_139 g_fun4_4) (and true true))) (forall ( (x_141 Real) (x_142 Real) (x_143 Real) ) (=> (and  (mem3 x_141 x_142 g_fun4_4) (mem3 x_141 x_143 g_fun4_4)) (= x_142 x_143)))) (forall ( (x_144 Real) (x_145 Real) (x_146 Real) ) (=> (and  (mem3 x_145 x_144 g_fun4_4) (mem3 x_146 x_144 g_fun4_4)) (= x_145 x_146))))))
(check-sat)
(exit)
