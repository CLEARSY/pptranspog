(set-option :print-success false)
(set-logic ALL)
; PO 2 0
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
(assert (exists ( (x_55 Int) ) (and (and (exists ( (x_56 (P (C Int Int))) ) (and (forall ( (x_57 Int) (x_58 Int) ) (= (mem2 x_58 x_57 x_56) (or  (and (= x_58 1) (= x_57 5)) (and (= x_58 2) (= x_57 2)) (and (= x_58 3) (= x_57 0))))) (forall ( (x_59 Int) (x_60 Int) (x_61 Int) ) (=> (and  (mem2 x_59 x_60 x_56) (mem2 x_59 x_61 x_56)) (= x_60 x_61))) (forall ( (x_62 Int) ) (= (and (>= x_62 1) (<= x_62 x_55)) (exists ( (x_63 Int) ) (mem2 x_62 x_63 x_56)))) (forall ( (x_64 Int) ) (=> (exists ( (x_65 Int) ) (mem2 x_65 x_64 x_56)) (mem0 x_64 g_S1_0))))) (forall ( (x_66 Int) ) (=> (mem0 x_66 g_S1_0) (exists ( (x_67 Int) ) (or  (and (= x_67 1) (= x_66 5)) (and (= x_67 2) (= x_66 2)) (and (= x_67 3) (= x_66 0))))))) (forall ( (x_68 Int) (x_69 Int) (x_70 Int) ) (=> (and  (or  (and (= x_69 1) (= x_68 5)) (and (= x_69 2) (= x_68 2)) (and (= x_69 3) (= x_68 0))) (or  (and (= x_70 1) (= x_68 5)) (and (= x_70 2) (= x_68 2)) (and (= x_70 3) (= x_68 0)))) (= x_69 x_70))))))
(assert (exists ( (x_71 Int) ) (and (and (exists ( (x_72 (P (C Int Real))) ) (and (forall ( (x_73 Real) (x_74 Int) ) (= (mem3 x_74 x_73 x_72) (or  (and (= x_74 1) (= x_73 1.2)) (and (= x_74 2) (= x_73 (- 5.3)))))) (forall ( (x_75 Int) (x_76 Real) (x_77 Real) ) (=> (and  (mem3 x_75 x_76 x_72) (mem3 x_75 x_77 x_72)) (= x_76 x_77))) (forall ( (x_78 Int) ) (= (and (>= x_78 1) (<= x_78 x_71)) (exists ( (x_79 Real) ) (mem3 x_78 x_79 x_72)))) (forall ( (x_80 Real) ) (=> (exists ( (x_81 Int) ) (mem3 x_81 x_80 x_72)) true)))) (forall ( (x_82 Real) ) (=> true (exists ( (x_83 Int) ) (or  (and (= x_83 1) (= x_82 1.2)) (and (= x_83 2) (= x_82 (- 5.3)))))))) (forall ( (x_84 Real) (x_85 Int) (x_86 Int) ) (=> (and  (or  (and (= x_85 1) (= x_84 1.2)) (and (= x_85 2) (= x_84 (- 5.3)))) (or  (and (= x_86 1) (= x_84 1.2)) (and (= x_86 2) (= x_84 (- 5.3))))) (= x_85 x_86))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_87 Int) ) (and (and (exists ( (x_88 (P (C Int Int))) ) (and (forall ( (x_89 Int) (x_90 Int) ) (= (mem2 x_90 x_89 x_88) (or  (and (= x_90 1) (= x_89 2)) (and (= x_90 2) (= x_89 3)) (and (= x_90 3) (= x_89 4))))) (forall ( (x_91 Int) (x_92 Int) (x_93 Int) ) (=> (and  (mem2 x_91 x_92 x_88) (mem2 x_91 x_93 x_88)) (= x_92 x_93))) (forall ( (x_94 Int) ) (= (and (>= x_94 1) (<= x_94 x_87)) (exists ( (x_95 Int) ) (mem2 x_94 x_95 x_88)))) (forall ( (x_96 Int) ) (=> (exists ( (x_97 Int) ) (mem2 x_97 x_96 x_88)) (mem0 x_96 g_S2_1))))) (forall ( (x_98 Int) ) (=> (mem0 x_98 g_S2_1) (exists ( (x_99 Int) ) (or  (and (= x_99 1) (= x_98 2)) (and (= x_99 2) (= x_98 3)) (and (= x_99 3) (= x_98 4))))))) (forall ( (x_100 Int) (x_101 Int) (x_102 Int) ) (=> (and  (or  (and (= x_101 1) (= x_100 2)) (and (= x_101 2) (= x_100 3)) (and (= x_101 3) (= x_100 4))) (or  (and (= x_102 1) (= x_100 2)) (and (= x_102 2) (= x_100 3)) (and (= x_102 3) (= x_100 4)))) (= x_101 x_102)))))))
(check-sat)
(exit)
