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
(assert (exists ( (x_147 Int) ) (and (exists ( (x_148 (P (C Int Int))) ) (and (forall ( (x_149 Int) (x_150 Int) ) (= (mem2 x_150 x_149 x_148) (or  (and (= x_150 1) (= x_149 5)) (and (= x_150 2) (= x_149 2)) (and (= x_150 3) (= x_149 0))))) (forall ( (x_151 Int) (x_152 Int) (x_153 Int) ) (=> (and  (mem2 x_151 x_152 x_148) (mem2 x_151 x_153 x_148)) (= x_152 x_153))) (forall ( (x_154 Int) ) (= (and (>= x_154 1) (<= x_154 x_147)) (exists ( (x_155 Int) ) (mem2 x_154 x_155 x_148)))) (forall ( (x_156 Int) ) (=> (exists ( (x_157 Int) ) (mem2 x_157 x_156 x_148)) (mem0 x_156 g_S1_0))))) (forall ( (x_158 Int) (x_159 Int) (x_160 Int) ) (=> (and  (or  (and (= x_159 1) (= x_158 5)) (and (= x_159 2) (= x_158 2)) (and (= x_159 3) (= x_158 0))) (or  (and (= x_160 1) (= x_158 5)) (and (= x_160 2) (= x_158 2)) (and (= x_160 3) (= x_158 0)))) (= x_159 x_160))))))
(assert (exists ( (x_161 Int) ) (and (exists ( (x_162 (P (C Int Real))) ) (and (forall ( (x_163 Real) (x_164 Int) ) (= (mem3 x_164 x_163 x_162) (or  (and (= x_164 1) (= x_163 1.2)) (and (= x_164 2) (= x_163 (- 5.3)))))) (forall ( (x_165 Int) (x_166 Real) (x_167 Real) ) (=> (and  (mem3 x_165 x_166 x_162) (mem3 x_165 x_167 x_162)) (= x_166 x_167))) (forall ( (x_168 Int) ) (= (and (>= x_168 1) (<= x_168 x_161)) (exists ( (x_169 Real) ) (mem3 x_168 x_169 x_162)))) (forall ( (x_170 Real) ) (=> (exists ( (x_171 Int) ) (mem3 x_171 x_170 x_162)) true)))) (forall ( (x_172 Real) (x_173 Int) (x_174 Int) ) (=> (and  (or  (and (= x_173 1) (= x_172 1.2)) (and (= x_173 2) (= x_172 (- 5.3)))) (or  (and (= x_174 1) (= x_172 1.2)) (and (= x_174 2) (= x_172 (- 5.3))))) (= x_173 x_174))))))
(assert (exists ( (x_175 Int) ) (and (exists ( (x_176 (P (C Int Int))) ) (and (forall ( (x_177 Int) (x_178 Int) ) (= (mem2 x_178 x_177 x_176) (or  (and (= x_178 1) (= x_177 2)) (and (= x_178 2) (= x_177 3)) (and (= x_178 3) (= x_177 4))))) (forall ( (x_179 Int) (x_180 Int) (x_181 Int) ) (=> (and  (mem2 x_179 x_180 x_176) (mem2 x_179 x_181 x_176)) (= x_180 x_181))) (forall ( (x_182 Int) ) (= (and (>= x_182 1) (<= x_182 x_175)) (exists ( (x_183 Int) ) (mem2 x_182 x_183 x_176)))) (forall ( (x_184 Int) ) (=> (exists ( (x_185 Int) ) (mem2 x_185 x_184 x_176)) (mem0 x_184 g_S2_1))))) (forall ( (x_186 Int) (x_187 Int) (x_188 Int) ) (=> (and  (or  (and (= x_187 1) (= x_186 2)) (and (= x_187 2) (= x_186 3)) (and (= x_187 3) (= x_186 4))) (or  (and (= x_188 1) (= x_186 2)) (and (= x_188 2) (= x_186 3)) (and (= x_188 3) (= x_186 4)))) (= x_187 x_188))))))
(assert (exists ( (x_189 Int) ) (and (exists ( (x_190 (P (C Int Int))) ) (and (forall ( (x_191 Int) (x_192 Int) ) (= (mem2 x_192 x_191 x_190) false)) (forall ( (x_193 Int) (x_194 Int) (x_195 Int) ) (=> (and  (mem2 x_193 x_194 x_190) (mem2 x_193 x_195 x_190)) (= x_194 x_195))) (forall ( (x_196 Int) ) (= (and (>= x_196 1) (<= x_196 x_189)) (exists ( (x_197 Int) ) (mem2 x_196 x_197 x_190)))) (forall ( (x_198 Int) ) (=> (exists ( (x_199 Int) ) (mem2 x_199 x_198 x_190)) (mem0 x_198 g_S1_0))))) (forall ( (x_200 Int) (x_201 Int) (x_202 Int) ) (=> (and  false false) (= x_201 x_202))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_203 Int) ) (and (exists ( (x_204 (P (C Int Real))) ) (and (forall ( (x_205 Real) (x_206 Int) ) (= (mem3 x_206 x_205 x_204) false)) (forall ( (x_207 Int) (x_208 Real) (x_209 Real) ) (=> (and  (mem3 x_207 x_208 x_204) (mem3 x_207 x_209 x_204)) (= x_208 x_209))) (forall ( (x_210 Int) ) (= (and (>= x_210 1) (<= x_210 x_203)) (exists ( (x_211 Real) ) (mem3 x_210 x_211 x_204)))) (forall ( (x_212 Real) ) (=> (exists ( (x_213 Int) ) (mem3 x_213 x_212 x_204)) true)))) (forall ( (x_214 Real) (x_215 Int) (x_216 Int) ) (=> (and  false false) (= x_215 x_216)))))))
(check-sat)
(exit)
