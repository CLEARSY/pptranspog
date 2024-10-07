(set-option :print-success false)
(set-logic ALL)
; PO 7 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)

(declare-fun isum ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (isum s) 0)
  )
 )
 :named |isum_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (isum T) (+ (isum S) x) )))))
  :named |isum_axiom_2|))


(declare-fun iprod ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (iprod s) 1)
  )
 )
 :named |iprod_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (iprod T) (* (iprod S) x) )))))
  :named |iprod_axiom_2|))

; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
(declare-fun g_empty_seq_8 () (P (C Int Int)))
(declare-fun g_fun1_4 () (P (C Int Int)))
(declare-fun g_fun2_5 () (P (C Int Int)))
(declare-fun g_fun3_6 () (P (C Int Int)))
(declare-fun g_rel1_3 () (P (C Int Int)))
(declare-fun g_ss_7 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_rel1_3) (or  (and (= x_10 2) (= x_9 7)) (and (= x_10 5) (= x_9 9)) (and (= x_10 2) (= x_9 6)) (and (= x_10 7) (= x_9 9)) (and (= x_10 5) (= x_9 3))))))
(assert (and (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_fun1_4) (and true true))) (forall ( (x_13 Int) (x_14 Int) (x_15 Int) ) (=> (and  (mem2 x_13 x_14 g_fun1_4) (mem2 x_13 x_15 g_fun1_4)) (= x_14 x_15)))))
(assert (forall ( (x_16 Int) ) (= (exists ( (x_17 Int) ) (mem2 x_16 x_17 g_fun1_4)) (and (>= x_16 0) (<= x_16 2)))))
(assert (forall ( (x_18 Int) ) (= (exists ( (x_19 Int) ) (mem2 x_19 x_18 g_fun1_4)) (and (>= x_18 1) (<= x_18 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_20 Int) ) (mem2 l_xx x_20 g_fun1_4)) (forall ((x_21 Int) ) (=> (= x_21 (+ l_xx 1)) (mem2 l_xx x_21 g_fun1_4))))))
(assert (forall ( (x_22 Int) (x_23 Int) ) (= (mem2 x_23 x_22 g_fun2_5) (and  (and (>= x_23 0) (<= x_23 2)) (= x_22 (+ x_23 1))))))
(assert (forall ( (x_24 Int) (x_25 Int) ) (= (mem2 x_25 x_24 g_fun3_6) (and  (and (>= x_25 0) (<= x_25 2)) (= x_24 (+ x_25 1))))))
(assert (exists ( (x_26 Int) ) (exists ( (x_27 (P (C Int Int))) ) (and (forall ( (x_28 Int) (x_29 Int) ) (= (mem2 x_29 x_28 x_27) (mem2 x_29 x_28 g_ss_7))) (forall ( (x_30 Int) (x_31 Int) (x_32 Int) ) (=> (and  (mem2 x_30 x_31 x_27) (mem2 x_30 x_32 x_27)) (= x_31 x_32))) (forall ( (x_33 Int) ) (= (and (>= x_33 1) (<= x_33 x_26)) (exists ( (x_34 Int) ) (mem2 x_33 x_34 x_27)))) (forall ( (x_35 Int) ) (=> (exists ( (x_36 Int) ) (mem2 x_36 x_35 x_27)) true))))))
(assert (forall ( (x_37 Int) (x_38 Int) ) (= (mem2 x_38 x_37 g_ss_7) (or  (and (= x_38 1) (= x_37 7)) (and (= x_38 2) (= x_37 18)) (and (= x_38 3) (= x_37 18)) (and (= x_38 4) (= x_37 21))))))
(assert (exists ( (x_39 Int) ) (exists ( (x_40 (P (C Int Int))) ) (and (forall ( (x_41 Int) (x_42 Int) ) (= (mem2 x_42 x_41 x_40) (mem2 x_42 x_41 g_empty_seq_8))) (forall ( (x_43 Int) (x_44 Int) (x_45 Int) ) (=> (and  (mem2 x_43 x_44 x_40) (mem2 x_43 x_45 x_40)) (= x_44 x_45))) (forall ( (x_46 Int) ) (= (and (>= x_46 1) (<= x_46 x_39)) (exists ( (x_47 Int) ) (mem2 x_46 x_47 x_40)))) (forall ( (x_48 Int) ) (=> (exists ( (x_49 Int) ) (mem2 x_49 x_48 x_40)) true))))))
(assert (forall ( (x_50 Int) (x_51 Int) ) (= (mem2 x_51 x_50 g_empty_seq_8) false)))
; Global hypotheses
(assert (forall ((x_150 (P Int)) ) (=> (forall ( (x_151 Int) ) (= (mem0 x_151 x_150) (exists ( (x_152 Int) ) (and  (mem0 x_152 g_S1_0) (= x_151 x_152))))) (<= (isum x_150) 0))))
(assert (forall ((x_153 (P Int)) ) (=> (forall ( (x_154 Int) ) (= (mem0 x_154 x_153) (exists ( (x_155 Int) ) (and  (mem0 x_155 g_S2_1) (= x_154 x_155))))) (<= (isum x_153) 1))))
(assert (forall ((x_156 (P Int)) ) (=> (forall ( (x_157 Int) ) (= (mem0 x_157 x_156) (exists ( (x_158 Int) ) (and  (mem0 x_158 g_S3_2) (= x_157 x_158))))) (<= (isum x_156) 6))))
(assert (forall ((x_159 (P Int)) ) (=> (forall ( (x_160 Int) ) (= (mem0 x_160 x_159) (exists ( (x_161 Int) ) (and  (mem0 x_161 g_S1_0) (= x_160 x_161))))) (<= (iprod x_159) 1))))
(assert (forall ((x_162 (P Int)) ) (=> (forall ( (x_163 Int) ) (= (mem0 x_163 x_162) (exists ( (x_164 Int) ) (and  (mem0 x_164 g_S2_1) (= x_163 x_164))))) (<= (iprod x_162) 1))))
(assert (forall ((x_165 (P Int)) ) (=> (forall ( (x_166 Int) ) (= (mem0 x_166 x_165) (exists ( (x_167 Int) ) (and  (mem0 x_167 g_S3_2) (= x_166 x_167))))) (<= (iprod x_165) 6))))
(assert (forall ((x_168 Int) ) (=> (exists ( (x_169 (P (C Int Int))) ) (and (and (exists ( (x_170 (P (C Int Int))) ) (and (forall ( (x_171 Int) (x_172 Int) ) (= (mem2 x_172 x_171 x_170) (mem2 x_172 x_171 x_169))) (forall ( (x_173 Int) (x_174 Int) (x_175 Int) ) (=> (and  (mem2 x_173 x_174 x_170) (mem2 x_173 x_175 x_170)) (= x_174 x_175))) (forall ( (x_176 Int) ) (= (mem0 x_176 g_S1_0) (exists ( (x_177 Int) ) (mem2 x_176 x_177 x_170)))) (forall ( (x_178 Int) ) (=> (exists ( (x_179 Int) ) (mem2 x_179 x_178 x_170)) (and (>= x_178 1) (<= x_178 x_168)))))) (forall ( (x_180 Int) ) (=> (and (>= x_180 1) (<= x_180 x_168)) (exists ( (x_181 Int) ) (mem2 x_181 x_180 x_169))))) (forall ( (x_182 Int) (x_183 Int) (x_184 Int) ) (=> (and  (mem2 x_183 x_182 x_169) (mem2 x_184 x_182 x_169)) (= x_183 x_184))))) (<= x_168 0))))
; Local hypotheses
; Goal
(assert (not (forall ((x_185 Int) ) (=> (exists ( (x_186 (P (C Int Int))) ) (and (and (exists ( (x_187 (P (C Int Int))) ) (and (forall ( (x_188 Int) (x_189 Int) ) (= (mem2 x_189 x_188 x_187) (mem2 x_189 x_188 x_186))) (forall ( (x_190 Int) (x_191 Int) (x_192 Int) ) (=> (and  (mem2 x_190 x_191 x_187) (mem2 x_190 x_192 x_187)) (= x_191 x_192))) (forall ( (x_193 Int) ) (= (mem0 x_193 g_S2_1) (exists ( (x_194 Int) ) (mem2 x_193 x_194 x_187)))) (forall ( (x_195 Int) ) (=> (exists ( (x_196 Int) ) (mem2 x_196 x_195 x_187)) (and (>= x_195 1) (<= x_195 x_185)))))) (forall ( (x_197 Int) ) (=> (and (>= x_197 1) (<= x_197 x_185)) (exists ( (x_198 Int) ) (mem2 x_198 x_197 x_186))))) (forall ( (x_199 Int) (x_200 Int) (x_201 Int) ) (=> (and  (mem2 x_200 x_199 x_186) (mem2 x_201 x_199 x_186)) (= x_200 x_201))))) (<= x_185 1)))))
(check-sat)
(exit)
