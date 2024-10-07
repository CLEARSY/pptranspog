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
(assert (exists ( (x_117 Int) ) (exists ( (x_118 (P (C Int Int))) ) (and (forall ( (x_119 Int) (x_120 Int) ) (= (mem2 x_120 x_119 x_118) (or  (and (= x_120 1) (= x_119 5)) (and (= x_120 2) (= x_119 2)) (and (= x_120 3) (= x_119 0))))) (forall ( (x_121 Int) (x_122 Int) (x_123 Int) ) (=> (and  (mem2 x_121 x_122 x_118) (mem2 x_121 x_123 x_118)) (= x_122 x_123))) (forall ( (x_124 Int) ) (= (and (>= x_124 1) (<= x_124 x_117)) (exists ( (x_125 Int) ) (mem2 x_124 x_125 x_118)))) (forall ( (x_126 Int) ) (=> (exists ( (x_127 Int) ) (mem2 x_127 x_126 x_118)) (mem0 x_126 g_S1_0)))))))
(assert (exists ( (x_128 Int) ) (exists ( (x_129 (P (C Int Real))) ) (and (forall ( (x_130 Real) (x_131 Int) ) (= (mem3 x_131 x_130 x_129) (or  (and (= x_131 1) (= x_130 1.2)) (and (= x_131 2) (= x_130 (- 5.3)))))) (forall ( (x_132 Int) (x_133 Real) (x_134 Real) ) (=> (and  (mem3 x_132 x_133 x_129) (mem3 x_132 x_134 x_129)) (= x_133 x_134))) (forall ( (x_135 Int) ) (= (and (>= x_135 1) (<= x_135 x_128)) (exists ( (x_136 Real) ) (mem3 x_135 x_136 x_129)))) (forall ( (x_137 Real) ) (=> (exists ( (x_138 Int) ) (mem3 x_138 x_137 x_129)) true))))))
(assert (exists ( (x_139 Int) ) (exists ( (x_140 (P (C Int Int))) ) (and (forall ( (x_141 Int) (x_142 Int) ) (= (mem2 x_142 x_141 x_140) (or  (and (= x_142 1) (= x_141 2)) (and (= x_142 2) (= x_141 3)) (and (= x_142 3) (= x_141 4))))) (forall ( (x_143 Int) (x_144 Int) (x_145 Int) ) (=> (and  (mem2 x_143 x_144 x_140) (mem2 x_143 x_145 x_140)) (= x_144 x_145))) (forall ( (x_146 Int) ) (= (and (>= x_146 1) (<= x_146 x_139)) (exists ( (x_147 Int) ) (mem2 x_146 x_147 x_140)))) (forall ( (x_148 Int) ) (=> (exists ( (x_149 Int) ) (mem2 x_149 x_148 x_140)) (mem0 x_148 g_S2_1)))))))
(assert (exists ( (x_150 Int) ) (exists ( (x_151 (P (C Int Int))) ) (and (forall ( (x_152 Int) (x_153 Int) ) (= (mem2 x_153 x_152 x_151) false)) (forall ( (x_154 Int) (x_155 Int) (x_156 Int) ) (=> (and  (mem2 x_154 x_155 x_151) (mem2 x_154 x_156 x_151)) (= x_155 x_156))) (forall ( (x_157 Int) ) (= (and (>= x_157 1) (<= x_157 x_150)) (exists ( (x_158 Int) ) (mem2 x_157 x_158 x_151)))) (forall ( (x_159 Int) ) (=> (exists ( (x_160 Int) ) (mem2 x_160 x_159 x_151)) (mem0 x_159 g_S1_0)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_161 Int) ) (exists ( (x_162 (P (C Int Real))) ) (and (forall ( (x_163 Real) (x_164 Int) ) (= (mem3 x_164 x_163 x_162) false)) (forall ( (x_165 Int) (x_166 Real) (x_167 Real) ) (=> (and  (mem3 x_165 x_166 x_162) (mem3 x_165 x_167 x_162)) (= x_166 x_167))) (forall ( (x_168 Int) ) (= (and (>= x_168 1) (<= x_168 x_161)) (exists ( (x_169 Real) ) (mem3 x_168 x_169 x_162)))) (forall ( (x_170 Real) ) (=> (exists ( (x_171 Int) ) (mem3 x_171 x_170 x_162)) true)))))))
(check-sat)
(exit)
