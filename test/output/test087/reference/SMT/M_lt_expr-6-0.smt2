(set-option :print-success false)
(set-logic ALL)
; PO 6 0
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
(assert (forall ((x_115 (P Int)) ) (=> (forall ( (x_116 Int) ) (= (mem0 x_116 x_115) (exists ( (x_117 Int) ) (and  (mem0 x_117 g_S1_0) (= x_116 x_117))))) (< (isum x_115) 0))))
(assert (forall ((x_118 (P Int)) ) (=> (forall ( (x_119 Int) ) (= (mem0 x_119 x_118) (exists ( (x_120 Int) ) (and  (mem0 x_120 g_S2_1) (= x_119 x_120))))) (< (isum x_118) 1))))
(assert (forall ((x_121 (P Int)) ) (=> (forall ( (x_122 Int) ) (= (mem0 x_122 x_121) (exists ( (x_123 Int) ) (and  (mem0 x_123 g_S3_2) (= x_122 x_123))))) (< (isum x_121) 6))))
(assert (forall ((x_124 (P Int)) ) (=> (forall ( (x_125 Int) ) (= (mem0 x_125 x_124) (exists ( (x_126 Int) ) (and  (mem0 x_126 g_S1_0) (= x_125 x_126))))) (< (iprod x_124) 1))))
(assert (forall ((x_127 (P Int)) ) (=> (forall ( (x_128 Int) ) (= (mem0 x_128 x_127) (exists ( (x_129 Int) ) (and  (mem0 x_129 g_S2_1) (= x_128 x_129))))) (< (iprod x_127) 1))))
(assert (forall ((x_130 (P Int)) ) (=> (forall ( (x_131 Int) ) (= (mem0 x_131 x_130) (exists ( (x_132 Int) ) (and  (mem0 x_132 g_S3_2) (= x_131 x_132))))) (< (iprod x_130) 6))))
; Local hypotheses
; Goal
(assert (not (forall ((x_133 Int) ) (=> (exists ( (x_134 (P (C Int Int))) ) (and (and (exists ( (x_135 (P (C Int Int))) ) (and (forall ( (x_136 Int) (x_137 Int) ) (= (mem2 x_137 x_136 x_135) (mem2 x_137 x_136 x_134))) (forall ( (x_138 Int) (x_139 Int) (x_140 Int) ) (=> (and  (mem2 x_138 x_139 x_135) (mem2 x_138 x_140 x_135)) (= x_139 x_140))) (forall ( (x_141 Int) ) (= (mem0 x_141 g_S1_0) (exists ( (x_142 Int) ) (mem2 x_141 x_142 x_135)))) (forall ( (x_143 Int) ) (=> (exists ( (x_144 Int) ) (mem2 x_144 x_143 x_135)) (and (>= x_143 1) (<= x_143 x_133)))))) (forall ( (x_145 Int) ) (=> (and (>= x_145 1) (<= x_145 x_133)) (exists ( (x_146 Int) ) (mem2 x_146 x_145 x_134))))) (forall ( (x_147 Int) (x_148 Int) (x_149 Int) ) (=> (and  (mem2 x_148 x_147 x_134) (mem2 x_149 x_147 x_134)) (= x_148 x_149))))) (< x_133 0)))))
(check-sat)
(exit)
