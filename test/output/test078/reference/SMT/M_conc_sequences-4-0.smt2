(set-option :print-success false)
(set-logic ALL)
; PO 4 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_6 () Int)
(declare-fun g_empty_seq_4 () (P (C Int Int)))
(declare-fun g_ii_5 () Int)
(declare-fun g_s0_0 () (P (C Int Int)))
(declare-fun g_s1_1 () (P (C Int Int)))
(declare-fun g_s2_2 () (P (C Int Int)))
(declare-fun g_s3_3 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_s0_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (exists ( (x_14 Int) ) (exists ( (x_15 (P (C Int Int))) ) (and (forall ( (x_16 Int) (x_17 Int) ) (= (mem2 x_17 x_16 x_15) (mem2 x_17 x_16 g_s1_1))) (forall ( (x_18 Int) (x_19 Int) (x_20 Int) ) (=> (and  (mem2 x_18 x_19 x_15) (mem2 x_18 x_20 x_15)) (= x_19 x_20))) (forall ( (x_21 Int) ) (= (and (>= x_21 1) (<= x_21 x_14)) (exists ( (x_22 Int) ) (mem2 x_21 x_22 x_15)))) (forall ( (x_23 Int) ) (=> (exists ( (x_24 Int) ) (mem2 x_24 x_23 x_15)) true))))))
(assert (exists ( (x_25 Int) ) (exists ( (x_26 (P (C Int Int))) ) (and (forall ( (x_27 Int) (x_28 Int) ) (= (mem2 x_28 x_27 x_26) (mem2 x_28 x_27 g_s2_2))) (forall ( (x_29 Int) (x_30 Int) (x_31 Int) ) (=> (and  (mem2 x_29 x_30 x_26) (mem2 x_29 x_31 x_26)) (= x_30 x_31))) (forall ( (x_32 Int) ) (= (and (>= x_32 1) (<= x_32 x_25)) (exists ( (x_33 Int) ) (mem2 x_32 x_33 x_26)))) (forall ( (x_34 Int) ) (=> (exists ( (x_35 Int) ) (mem2 x_35 x_34 x_26)) true))))))
(assert (forall ( (x_36 Int) (x_37 Int) ) (= (mem2 x_37 x_36 g_s2_2) (or  (and (= x_37 1) (= x_36 5)) (and (= x_37 2) (= x_36 4)) (and (= x_37 3) (= x_36 1)) (and (= x_37 4) (= x_36 1)) (and (= x_37 5) (= x_36 2)) (and (= x_37 6) (= x_36 3)) (and (= x_37 7) (= x_36 8))))))
(assert (exists ( (x_38 Int) ) (exists ( (x_39 (P (C Int Int))) ) (and (forall ( (x_40 Int) (x_41 Int) ) (= (mem2 x_41 x_40 x_39) (mem2 x_41 x_40 g_s3_3))) (forall ( (x_42 Int) (x_43 Int) (x_44 Int) ) (=> (and  (mem2 x_42 x_43 x_39) (mem2 x_42 x_44 x_39)) (= x_43 x_44))) (forall ( (x_45 Int) ) (= (and (>= x_45 1) (<= x_45 x_38)) (exists ( (x_46 Int) ) (mem2 x_45 x_46 x_39)))) (forall ( (x_47 Int) ) (=> (exists ( (x_48 Int) ) (mem2 x_48 x_47 x_39)) true))))))
(assert (forall ( (x_49 Int) (x_50 Int) ) (= (mem2 x_50 x_49 g_s3_3) (or  (and (= x_50 1) (= x_49 0)) (and (= x_50 2) (= x_49 7)) (and (= x_50 3) (= x_49 3)) (and (= x_50 4) (= x_49 8))))))
(assert (exists ( (x_51 Int) ) (exists ( (x_52 (P (C Int Int))) ) (and (forall ( (x_53 Int) (x_54 Int) ) (= (mem2 x_54 x_53 x_52) (mem2 x_54 x_53 g_empty_seq_4))) (forall ( (x_55 Int) (x_56 Int) (x_57 Int) ) (=> (and  (mem2 x_55 x_56 x_52) (mem2 x_55 x_57 x_52)) (= x_56 x_57))) (forall ( (x_58 Int) ) (= (and (>= x_58 1) (<= x_58 x_51)) (exists ( (x_59 Int) ) (mem2 x_58 x_59 x_52)))) (forall ( (x_60 Int) ) (=> (exists ( (x_61 Int) ) (mem2 x_61 x_60 x_52)) true))))))
(assert (forall ( (x_62 Int) (x_63 Int) ) (= (mem2 x_63 x_62 g_empty_seq_4) false)))
(assert (<= 0 g_ii_5))
(assert true)
; Global hypotheses
(assert (exists ( (x_134 (P (C Int Int))) ) (and  (forall ( (x_135 Int) (x_136 Int) ) (= (mem2 x_136 x_135 x_134) (mem2 x_136 x_135 g_s0_0))) (or  (mem2 g_ii_5 g_c0_6 x_134) (forall ((x_137 Int) ) (=> (forall ((x_138 Int) ) (=> (forall ( (x_139 Int) ) (= (exists ( (x_140 Int) ) (mem2 x_139 x_140 x_134)) (and (>= x_139 1) (<= x_139 x_138)))) (= x_137 (- g_ii_5 x_138)))) (mem2 x_137 g_c0_6 g_s1_1)))))))
(assert (exists ( (x_141 (P (C Int Int))) ) (and  (forall ( (x_142 Int) (x_143 Int) ) (= (mem2 x_143 x_142 x_141) (mem2 x_143 x_142 g_empty_seq_4))) (or  (mem2 g_ii_5 g_c0_6 x_141) (forall ((x_144 Int) ) (=> (forall ((x_145 Int) ) (=> (forall ( (x_146 Int) ) (= (exists ( (x_147 Int) ) (mem2 x_146 x_147 x_141)) (and (>= x_146 1) (<= x_146 x_145)))) (= x_144 (- g_ii_5 x_145)))) (mem2 x_144 g_c0_6 g_s0_0)))))))
(assert (exists ( (x_148 (P (C Int Int))) ) (and  (forall ( (x_149 Int) (x_150 Int) ) (= (mem2 x_150 x_149 x_148) (mem2 x_150 x_149 g_s0_0))) (or  (mem2 g_ii_5 g_c0_6 x_148) (forall ((x_151 Int) ) (=> (forall ((x_152 Int) ) (=> (forall ( (x_153 Int) ) (= (exists ( (x_154 Int) ) (mem2 x_153 x_154 x_148)) (and (>= x_153 1) (<= x_153 x_152)))) (= x_151 (- g_ii_5 x_152)))) (mem2 x_151 g_c0_6 g_empty_seq_4)))))))
(assert (exists ( (x_155 (P (C Int Int))) ) (and  (forall ( (x_156 Int) (x_157 Int) ) (= (mem2 x_157 x_156 x_155) (mem2 x_157 x_156 g_empty_seq_4))) (or  (mem2 g_ii_5 g_c0_6 x_155) (forall ((x_158 Int) ) (=> (forall ((x_159 Int) ) (=> (forall ( (x_160 Int) ) (= (exists ( (x_161 Int) ) (mem2 x_160 x_161 x_155)) (and (>= x_160 1) (<= x_160 x_159)))) (= x_158 (- g_ii_5 x_159)))) (mem2 x_158 g_c0_6 g_empty_seq_4)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_162 (P (C Int Int))) ) (and  (forall ( (x_163 Int) (x_164 Int) ) (= (mem2 x_164 x_163 x_162) (mem2 x_164 x_163 g_s2_2))) (or  (forall ((x_165 Int)(x_166 Int) ) (=> (and (= x_165 5) (= x_166 5)) (mem2 x_165 x_166 x_162))) (forall ((x_167 Int)(x_168 Int) ) (=> (and (forall ((x_169 Int) ) (=> (forall ( (x_170 Int) ) (= (exists ( (x_171 Int) ) (mem2 x_170 x_171 x_162)) (and (>= x_170 1) (<= x_170 x_169)))) (= x_167 (- 5 x_169)))) (= x_168 5)) (mem2 x_167 x_168 g_s3_3))))))))
(check-sat)
(exit)
