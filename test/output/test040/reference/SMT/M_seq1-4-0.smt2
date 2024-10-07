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
(assert (and  (exists ( (x_137 Int) ) (exists ( (x_138 (P (C Int Int))) ) (and (forall ( (x_139 Int) (x_140 Int) ) (= (mem2 x_140 x_139 x_138) (or  (and (= x_140 1) (= x_139 5)) (and (= x_140 2) (= x_139 2)) (and (= x_140 3) (= x_139 0))))) (forall ( (x_141 Int) (x_142 Int) (x_143 Int) ) (=> (and  (mem2 x_141 x_142 x_138) (mem2 x_141 x_143 x_138)) (= x_142 x_143))) (forall ( (x_144 Int) ) (= (and (>= x_144 1) (<= x_144 x_137)) (exists ( (x_145 Int) ) (mem2 x_144 x_145 x_138)))) (forall ( (x_146 Int) ) (=> (exists ( (x_147 Int) ) (mem2 x_147 x_146 x_138)) (mem0 x_146 g_S1_0)))))) (not (forall ( (x_148 Int) (x_149 Int) ) (= (or  (and (= x_149 1) (= x_148 5)) (and (= x_149 2) (= x_148 2)) (and (= x_149 3) (= x_148 0))) false)))))
(assert (and  (exists ( (x_150 Int) ) (exists ( (x_151 (P (C Int Real))) ) (and (forall ( (x_152 Real) (x_153 Int) ) (= (mem3 x_153 x_152 x_151) (or  (and (= x_153 1) (= x_152 1.2)) (and (= x_153 2) (= x_152 (- 5.3)))))) (forall ( (x_154 Int) (x_155 Real) (x_156 Real) ) (=> (and  (mem3 x_154 x_155 x_151) (mem3 x_154 x_156 x_151)) (= x_155 x_156))) (forall ( (x_157 Int) ) (= (and (>= x_157 1) (<= x_157 x_150)) (exists ( (x_158 Real) ) (mem3 x_157 x_158 x_151)))) (forall ( (x_159 Real) ) (=> (exists ( (x_160 Int) ) (mem3 x_160 x_159 x_151)) true))))) (not (forall ( (x_161 Real) (x_162 Int) ) (= (or  (and (= x_162 1) (= x_161 1.2)) (and (= x_162 2) (= x_161 (- 5.3)))) false)))))
(assert (and  (exists ( (x_163 Int) ) (exists ( (x_164 (P (C Int Int))) ) (and (forall ( (x_165 Int) (x_166 Int) ) (= (mem2 x_166 x_165 x_164) (or  (and (= x_166 1) (= x_165 2)) (and (= x_166 2) (= x_165 3)) (and (= x_166 3) (= x_165 4))))) (forall ( (x_167 Int) (x_168 Int) (x_169 Int) ) (=> (and  (mem2 x_167 x_168 x_164) (mem2 x_167 x_169 x_164)) (= x_168 x_169))) (forall ( (x_170 Int) ) (= (and (>= x_170 1) (<= x_170 x_163)) (exists ( (x_171 Int) ) (mem2 x_170 x_171 x_164)))) (forall ( (x_172 Int) ) (=> (exists ( (x_173 Int) ) (mem2 x_173 x_172 x_164)) (mem0 x_172 g_S2_1)))))) (not (forall ( (x_174 Int) (x_175 Int) ) (= (or  (and (= x_175 1) (= x_174 2)) (and (= x_175 2) (= x_174 3)) (and (= x_175 3) (= x_174 4))) false)))))
(assert (and  (exists ( (x_176 Int) ) (exists ( (x_177 (P (C Int Int))) ) (and (forall ( (x_178 Int) (x_179 Int) ) (= (mem2 x_179 x_178 x_177) false)) (forall ( (x_180 Int) (x_181 Int) (x_182 Int) ) (=> (and  (mem2 x_180 x_181 x_177) (mem2 x_180 x_182 x_177)) (= x_181 x_182))) (forall ( (x_183 Int) ) (= (and (>= x_183 1) (<= x_183 x_176)) (exists ( (x_184 Int) ) (mem2 x_183 x_184 x_177)))) (forall ( (x_185 Int) ) (=> (exists ( (x_186 Int) ) (mem2 x_186 x_185 x_177)) (mem0 x_185 g_S1_0)))))) (not (forall ( (x_187 Int) (x_188 Int) ) (= false false)))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_189 Int) ) (exists ( (x_190 (P (C Int Real))) ) (and (forall ( (x_191 Real) (x_192 Int) ) (= (mem3 x_192 x_191 x_190) false)) (forall ( (x_193 Int) (x_194 Real) (x_195 Real) ) (=> (and  (mem3 x_193 x_194 x_190) (mem3 x_193 x_195 x_190)) (= x_194 x_195))) (forall ( (x_196 Int) ) (= (and (>= x_196 1) (<= x_196 x_189)) (exists ( (x_197 Real) ) (mem3 x_196 x_197 x_190)))) (forall ( (x_198 Real) ) (=> (exists ( (x_199 Int) ) (mem3 x_199 x_198 x_190)) true))))) (not (forall ( (x_200 Real) (x_201 Int) ) (= false false))))))
(check-sat)
(exit)
