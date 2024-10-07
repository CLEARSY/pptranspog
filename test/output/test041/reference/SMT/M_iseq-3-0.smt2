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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( Int Real (P (C Int Real))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (= (mem0 x_4 g_S1_0) (or  (= x_4 5) (= x_4 4) (= x_4 1) (= x_4 1) (= x_4 2) (= x_4 3) (= x_4 8)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S2_1) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S2_1) (and  true (= (mod x_6 2) 0)))))
; Global hypotheses
(assert (exists ( (x_91 Int) ) (and (exists ( (x_92 (P (C Int Int))) ) (and (forall ( (x_93 Int) (x_94 Int) ) (= (mem2 x_94 x_93 x_92) (or  (and (= x_94 1) (= x_93 5)) (and (= x_94 2) (= x_93 2)) (and (= x_94 3) (= x_93 0))))) (forall ( (x_95 Int) (x_96 Int) (x_97 Int) ) (=> (and  (mem2 x_95 x_96 x_92) (mem2 x_95 x_97 x_92)) (= x_96 x_97))) (forall ( (x_98 Int) ) (= (and (>= x_98 1) (<= x_98 x_91)) (exists ( (x_99 Int) ) (mem2 x_98 x_99 x_92)))) (forall ( (x_100 Int) ) (=> (exists ( (x_101 Int) ) (mem2 x_101 x_100 x_92)) (mem0 x_100 g_S1_0))))) (forall ( (x_102 Int) (x_103 Int) (x_104 Int) ) (=> (and  (or  (and (= x_103 1) (= x_102 5)) (and (= x_103 2) (= x_102 2)) (and (= x_103 3) (= x_102 0))) (or  (and (= x_104 1) (= x_102 5)) (and (= x_104 2) (= x_102 2)) (and (= x_104 3) (= x_102 0)))) (= x_103 x_104))))))
(assert (exists ( (x_105 Int) ) (and (exists ( (x_106 (P (C Int Real))) ) (and (forall ( (x_107 Real) (x_108 Int) ) (= (mem3 x_108 x_107 x_106) (or  (and (= x_108 1) (= x_107 1.2)) (and (= x_108 2) (= x_107 (- 5.3)))))) (forall ( (x_109 Int) (x_110 Real) (x_111 Real) ) (=> (and  (mem3 x_109 x_110 x_106) (mem3 x_109 x_111 x_106)) (= x_110 x_111))) (forall ( (x_112 Int) ) (= (and (>= x_112 1) (<= x_112 x_105)) (exists ( (x_113 Real) ) (mem3 x_112 x_113 x_106)))) (forall ( (x_114 Real) ) (=> (exists ( (x_115 Int) ) (mem3 x_115 x_114 x_106)) true)))) (forall ( (x_116 Real) (x_117 Int) (x_118 Int) ) (=> (and  (or  (and (= x_117 1) (= x_116 1.2)) (and (= x_117 2) (= x_116 (- 5.3)))) (or  (and (= x_118 1) (= x_116 1.2)) (and (= x_118 2) (= x_116 (- 5.3))))) (= x_117 x_118))))))
(assert (exists ( (x_119 Int) ) (and (exists ( (x_120 (P (C Int Int))) ) (and (forall ( (x_121 Int) (x_122 Int) ) (= (mem2 x_122 x_121 x_120) (or  (and (= x_122 1) (= x_121 2)) (and (= x_122 2) (= x_121 3)) (and (= x_122 3) (= x_121 4))))) (forall ( (x_123 Int) (x_124 Int) (x_125 Int) ) (=> (and  (mem2 x_123 x_124 x_120) (mem2 x_123 x_125 x_120)) (= x_124 x_125))) (forall ( (x_126 Int) ) (= (and (>= x_126 1) (<= x_126 x_119)) (exists ( (x_127 Int) ) (mem2 x_126 x_127 x_120)))) (forall ( (x_128 Int) ) (=> (exists ( (x_129 Int) ) (mem2 x_129 x_128 x_120)) (mem0 x_128 g_S2_1))))) (forall ( (x_130 Int) (x_131 Int) (x_132 Int) ) (=> (and  (or  (and (= x_131 1) (= x_130 2)) (and (= x_131 2) (= x_130 3)) (and (= x_131 3) (= x_130 4))) (or  (and (= x_132 1) (= x_130 2)) (and (= x_132 2) (= x_130 3)) (and (= x_132 3) (= x_130 4)))) (= x_131 x_132))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_133 Int) ) (and (exists ( (x_134 (P (C Int Int))) ) (and (forall ( (x_135 Int) (x_136 Int) ) (= (mem2 x_136 x_135 x_134) false)) (forall ( (x_137 Int) (x_138 Int) (x_139 Int) ) (=> (and  (mem2 x_137 x_138 x_134) (mem2 x_137 x_139 x_134)) (= x_138 x_139))) (forall ( (x_140 Int) ) (= (and (>= x_140 1) (<= x_140 x_133)) (exists ( (x_141 Int) ) (mem2 x_140 x_141 x_134)))) (forall ( (x_142 Int) ) (=> (exists ( (x_143 Int) ) (mem2 x_143 x_142 x_134)) (mem0 x_142 g_S1_0))))) (forall ( (x_144 Int) (x_145 Int) (x_146 Int) ) (=> (and  false false) (= x_145 x_146)))))))
(check-sat)
(exit)
