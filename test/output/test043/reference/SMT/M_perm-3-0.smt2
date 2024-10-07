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
(assert (exists ( (x_103 Int) ) (and (and (exists ( (x_104 (P (C Int Int))) ) (and (forall ( (x_105 Int) (x_106 Int) ) (= (mem2 x_106 x_105 x_104) (or  (and (= x_106 1) (= x_105 5)) (and (= x_106 2) (= x_105 2)) (and (= x_106 3) (= x_105 0))))) (forall ( (x_107 Int) (x_108 Int) (x_109 Int) ) (=> (and  (mem2 x_107 x_108 x_104) (mem2 x_107 x_109 x_104)) (= x_108 x_109))) (forall ( (x_110 Int) ) (= (and (>= x_110 1) (<= x_110 x_103)) (exists ( (x_111 Int) ) (mem2 x_110 x_111 x_104)))) (forall ( (x_112 Int) ) (=> (exists ( (x_113 Int) ) (mem2 x_113 x_112 x_104)) (mem0 x_112 g_S1_0))))) (forall ( (x_114 Int) ) (=> (mem0 x_114 g_S1_0) (exists ( (x_115 Int) ) (or  (and (= x_115 1) (= x_114 5)) (and (= x_115 2) (= x_114 2)) (and (= x_115 3) (= x_114 0))))))) (forall ( (x_116 Int) (x_117 Int) (x_118 Int) ) (=> (and  (or  (and (= x_117 1) (= x_116 5)) (and (= x_117 2) (= x_116 2)) (and (= x_117 3) (= x_116 0))) (or  (and (= x_118 1) (= x_116 5)) (and (= x_118 2) (= x_116 2)) (and (= x_118 3) (= x_116 0)))) (= x_117 x_118))))))
(assert (exists ( (x_119 Int) ) (and (and (exists ( (x_120 (P (C Int Real))) ) (and (forall ( (x_121 Real) (x_122 Int) ) (= (mem3 x_122 x_121 x_120) (or  (and (= x_122 1) (= x_121 1.2)) (and (= x_122 2) (= x_121 (- 5.3)))))) (forall ( (x_123 Int) (x_124 Real) (x_125 Real) ) (=> (and  (mem3 x_123 x_124 x_120) (mem3 x_123 x_125 x_120)) (= x_124 x_125))) (forall ( (x_126 Int) ) (= (and (>= x_126 1) (<= x_126 x_119)) (exists ( (x_127 Real) ) (mem3 x_126 x_127 x_120)))) (forall ( (x_128 Real) ) (=> (exists ( (x_129 Int) ) (mem3 x_129 x_128 x_120)) true)))) (forall ( (x_130 Real) ) (=> true (exists ( (x_131 Int) ) (or  (and (= x_131 1) (= x_130 1.2)) (and (= x_131 2) (= x_130 (- 5.3)))))))) (forall ( (x_132 Real) (x_133 Int) (x_134 Int) ) (=> (and  (or  (and (= x_133 1) (= x_132 1.2)) (and (= x_133 2) (= x_132 (- 5.3)))) (or  (and (= x_134 1) (= x_132 1.2)) (and (= x_134 2) (= x_132 (- 5.3))))) (= x_133 x_134))))))
(assert (exists ( (x_135 Int) ) (and (and (exists ( (x_136 (P (C Int Int))) ) (and (forall ( (x_137 Int) (x_138 Int) ) (= (mem2 x_138 x_137 x_136) (or  (and (= x_138 1) (= x_137 2)) (and (= x_138 2) (= x_137 3)) (and (= x_138 3) (= x_137 4))))) (forall ( (x_139 Int) (x_140 Int) (x_141 Int) ) (=> (and  (mem2 x_139 x_140 x_136) (mem2 x_139 x_141 x_136)) (= x_140 x_141))) (forall ( (x_142 Int) ) (= (and (>= x_142 1) (<= x_142 x_135)) (exists ( (x_143 Int) ) (mem2 x_142 x_143 x_136)))) (forall ( (x_144 Int) ) (=> (exists ( (x_145 Int) ) (mem2 x_145 x_144 x_136)) (mem0 x_144 g_S2_1))))) (forall ( (x_146 Int) ) (=> (mem0 x_146 g_S2_1) (exists ( (x_147 Int) ) (or  (and (= x_147 1) (= x_146 2)) (and (= x_147 2) (= x_146 3)) (and (= x_147 3) (= x_146 4))))))) (forall ( (x_148 Int) (x_149 Int) (x_150 Int) ) (=> (and  (or  (and (= x_149 1) (= x_148 2)) (and (= x_149 2) (= x_148 3)) (and (= x_149 3) (= x_148 4))) (or  (and (= x_150 1) (= x_148 2)) (and (= x_150 2) (= x_148 3)) (and (= x_150 3) (= x_148 4)))) (= x_149 x_150))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_151 Int) ) (and (and (exists ( (x_152 (P (C Int Int))) ) (and (forall ( (x_153 Int) (x_154 Int) ) (= (mem2 x_154 x_153 x_152) false)) (forall ( (x_155 Int) (x_156 Int) (x_157 Int) ) (=> (and  (mem2 x_155 x_156 x_152) (mem2 x_155 x_157 x_152)) (= x_156 x_157))) (forall ( (x_158 Int) ) (= (and (>= x_158 1) (<= x_158 x_151)) (exists ( (x_159 Int) ) (mem2 x_158 x_159 x_152)))) (forall ( (x_160 Int) ) (=> (exists ( (x_161 Int) ) (mem2 x_161 x_160 x_152)) (mem0 x_160 g_S1_0))))) (forall ( (x_162 Int) ) (=> (mem0 x_162 g_S1_0) (exists ( (x_163 Int) ) false)))) (forall ( (x_164 Int) (x_165 Int) (x_166 Int) ) (=> (and  false false) (= x_165 x_166)))))))
(check-sat)
(exit)
