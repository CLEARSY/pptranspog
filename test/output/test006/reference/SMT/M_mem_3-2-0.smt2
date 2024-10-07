(set-option :print-success false)
(set-logic ALL)
; PO 2 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_1 () Int)
(declare-fun g_c1_2 () (P Int))
(declare-fun g_c2_3 () (P (P Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem3 ( (P Int) (P (P Int))) Bool)
(declare-fun mem4 ( (P Int) Int (P (C (P Int) Int))) Bool)
; Defines
(assert (and  (not (forall ( (x_3 Int) ) (= (mem0 x_3 g_s0_0) false))) (and  (forall ( (x_6 Int) ) (=> (mem0 x_6 g_s0_0) true)) (exists ( (x_4 Int) (x_5 (P (C Int Int))) ) (and (and (exists ( (x_7 (P (C Int Int))) ) (and (forall ( (x_8 Int) (x_9 Int) ) (= (mem2 x_9 x_8 x_7) (mem2 x_9 x_8 x_5))) (forall ( (x_10 Int) (x_11 Int) (x_12 Int) ) (=> (and  (mem2 x_10 x_11 x_7) (mem2 x_10 x_12 x_7)) (= x_11 x_12))) (forall ( (x_13 Int) ) (= (and (>= x_13 1) (<= x_13 x_4)) (exists ( (x_14 Int) ) (mem2 x_13 x_14 x_7)))) (forall ( (x_15 Int) ) (=> (exists ( (x_16 Int) ) (mem2 x_16 x_15 x_7)) (mem0 x_15 g_s0_0))))) (forall ( (x_17 Int) ) (=> (mem0 x_17 g_s0_0) (exists ( (x_18 Int) ) (mem2 x_18 x_17 x_5))))) (forall ( (x_19 Int) (x_20 Int) (x_21 Int) ) (=> (and  (mem2 x_20 x_19 x_5) (mem2 x_21 x_19 x_5)) (= x_20 x_21))))))))
(assert (mem0 g_c0_1 g_s0_0))
(assert (forall ( (x_22 Int) ) (=> (mem0 x_22 g_c1_2) (mem0 x_22 g_s0_0))))
(assert (forall ( (x_23 (P Int)) ) (=> (mem3 x_23 g_c2_3) (forall ( (x_24 Int) ) (=> (mem0 x_24 x_23) (mem0 x_24 g_s0_0))))))
; Global hypotheses
(assert (mem0 g_c0_1 g_c1_2))
(assert (mem3 g_c1_2 g_c2_3))
; Local hypotheses
; Goal
(assert (not (exists ( (x_25 (P (C Int Int))) ) (and (and (exists ( (x_26 (P (C Int Int))) ) (and (forall ( (x_27 Int) (x_28 Int) ) (= (mem2 x_28 x_27 x_26) (mem2 x_28 x_27 x_25))) (forall ( (x_29 Int) (x_30 Int) (x_31 Int) ) (=> (and  (mem2 x_29 x_30 x_26) (mem2 x_29 x_31 x_26)) (= x_30 x_31))) (forall ( (x_32 Int) ) (= (mem0 x_32 g_c1_2) (exists ( (x_33 Int) ) (mem2 x_32 x_33 x_26)))) (forall ( (x_34 Int) ) (=> (exists ( (x_35 Int) ) (mem2 x_35 x_34 x_26)) (forall ((x_36 Int) ) (=> (exists ( (x_37 (P (C (P Int) Int))) ) (and (and (exists ( (x_38 (P (C (P Int) Int))) ) (and (forall ( (x_39 Int) (x_40 (P Int)) ) (= (mem4 x_40 x_39 x_38) (mem4 x_40 x_39 x_37))) (forall ( (x_41 (P Int)) (x_42 Int) (x_43 Int) ) (=> (and  (mem4 x_41 x_42 x_38) (mem4 x_41 x_43 x_38)) (= x_42 x_43))) (forall ( (x_44 (P Int)) ) (= (mem3 x_44 g_c2_3) (exists ( (x_45 Int) ) (mem4 x_44 x_45 x_38)))) (forall ( (x_46 Int) ) (=> (exists ( (x_47 (P Int)) ) (mem4 x_47 x_46 x_38)) (and (>= x_46 1) (<= x_46 x_36)))))) (forall ( (x_48 Int) ) (=> (and (>= x_48 1) (<= x_48 x_36)) (exists ( (x_49 (P Int)) ) (mem4 x_49 x_48 x_37))))) (forall ( (x_50 Int) (x_51 (P Int)) (x_52 (P Int)) ) (=> (and  (mem4 x_51 x_50 x_37) (mem4 x_52 x_50 x_37)) (forall ( (x_53 Int) ) (= (mem0 x_53 x_51) (mem0 x_53 x_52))))))) (and (>= x_34 1) (<= x_34 x_36)))))))) (forall ( (x_54 Int) ) (=> (forall ((x_55 Int) ) (=> (exists ( (x_56 (P (C (P Int) Int))) ) (and (and (exists ( (x_57 (P (C (P Int) Int))) ) (and (forall ( (x_58 Int) (x_59 (P Int)) ) (= (mem4 x_59 x_58 x_57) (mem4 x_59 x_58 x_56))) (forall ( (x_60 (P Int)) (x_61 Int) (x_62 Int) ) (=> (and  (mem4 x_60 x_61 x_57) (mem4 x_60 x_62 x_57)) (= x_61 x_62))) (forall ( (x_63 (P Int)) ) (= (mem3 x_63 g_c2_3) (exists ( (x_64 Int) ) (mem4 x_63 x_64 x_57)))) (forall ( (x_65 Int) ) (=> (exists ( (x_66 (P Int)) ) (mem4 x_66 x_65 x_57)) (and (>= x_65 1) (<= x_65 x_55)))))) (forall ( (x_67 Int) ) (=> (and (>= x_67 1) (<= x_67 x_55)) (exists ( (x_68 (P Int)) ) (mem4 x_68 x_67 x_56))))) (forall ( (x_69 Int) (x_70 (P Int)) (x_71 (P Int)) ) (=> (and  (mem4 x_70 x_69 x_56) (mem4 x_71 x_69 x_56)) (forall ( (x_72 Int) ) (= (mem0 x_72 x_70) (mem0 x_72 x_71))))))) (and (>= x_54 1) (<= x_54 x_55)))) (exists ( (x_73 Int) ) (mem2 x_73 x_54 x_25))))) (forall ( (x_74 Int) (x_75 Int) (x_76 Int) ) (=> (and  (mem2 x_75 x_74 x_25) (mem2 x_76 x_74 x_25)) (= x_75 x_76)))))))
(check-sat)
(exit)
