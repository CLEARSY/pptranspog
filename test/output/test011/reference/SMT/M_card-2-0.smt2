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
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
; Global hypotheses
(assert (exists ( (x_57 (P (C Int Int))) ) (and (and (exists ( (x_58 (P (C Int Int))) ) (and (forall ( (x_59 Int) (x_60 Int) ) (= (mem2 x_60 x_59 x_58) (mem2 x_60 x_59 x_57))) (forall ( (x_61 Int) (x_62 Int) (x_63 Int) ) (=> (and  (mem2 x_61 x_62 x_58) (mem2 x_61 x_63 x_58)) (= x_62 x_63))) (forall ( (x_64 Int) ) (= (mem0 x_64 g_S1_0) (exists ( (x_65 Int) ) (mem2 x_64 x_65 x_58)))) (forall ( (x_66 Int) ) (=> (exists ( (x_67 Int) ) (mem2 x_67 x_66 x_58)) (and (>= x_66 1) (<= x_66 0)))))) (forall ( (x_68 Int) ) (=> (and (>= x_68 1) (<= x_68 0)) (exists ( (x_69 Int) ) (mem2 x_69 x_68 x_57))))) (forall ( (x_70 Int) (x_71 Int) (x_72 Int) ) (=> (and  (mem2 x_71 x_70 x_57) (mem2 x_72 x_70 x_57)) (= x_71 x_72))))))
(assert (exists ( (x_73 (P (C Int Int))) ) (and (and (exists ( (x_74 (P (C Int Int))) ) (and (forall ( (x_75 Int) (x_76 Int) ) (= (mem2 x_76 x_75 x_74) (mem2 x_76 x_75 x_73))) (forall ( (x_77 Int) (x_78 Int) (x_79 Int) ) (=> (and  (mem2 x_77 x_78 x_74) (mem2 x_77 x_79 x_74)) (= x_78 x_79))) (forall ( (x_80 Int) ) (= (mem0 x_80 g_S2_1) (exists ( (x_81 Int) ) (mem2 x_80 x_81 x_74)))) (forall ( (x_82 Int) ) (=> (exists ( (x_83 Int) ) (mem2 x_83 x_82 x_74)) (and (>= x_82 1) (<= x_82 1)))))) (forall ( (x_84 Int) ) (=> (and (>= x_84 1) (<= x_84 1)) (exists ( (x_85 Int) ) (mem2 x_85 x_84 x_73))))) (forall ( (x_86 Int) (x_87 Int) (x_88 Int) ) (=> (and  (mem2 x_87 x_86 x_73) (mem2 x_88 x_86 x_73)) (= x_87 x_88))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_89 (P (C Int Int))) ) (and (and (exists ( (x_90 (P (C Int Int))) ) (and (forall ( (x_91 Int) (x_92 Int) ) (= (mem2 x_92 x_91 x_90) (mem2 x_92 x_91 x_89))) (forall ( (x_93 Int) (x_94 Int) (x_95 Int) ) (=> (and  (mem2 x_93 x_94 x_90) (mem2 x_93 x_95 x_90)) (= x_94 x_95))) (forall ( (x_96 Int) ) (= (mem0 x_96 g_S3_2) (exists ( (x_97 Int) ) (mem2 x_96 x_97 x_90)))) (forall ( (x_98 Int) ) (=> (exists ( (x_99 Int) ) (mem2 x_99 x_98 x_90)) (and (>= x_98 1) (<= x_98 3)))))) (forall ( (x_100 Int) ) (=> (and (>= x_100 1) (<= x_100 3)) (exists ( (x_101 Int) ) (mem2 x_101 x_100 x_89))))) (forall ( (x_102 Int) (x_103 Int) (x_104 Int) ) (=> (and  (mem2 x_103 x_102 x_89) (mem2 x_104 x_102 x_89)) (= x_103 x_104)))))))
(check-sat)
(exit)
