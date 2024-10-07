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
(assert (exists ( (x_73 Int) ) (exists ( (x_74 (P (C Int Int))) ) (and (forall ( (x_75 Int) (x_76 Int) ) (= (mem2 x_76 x_75 x_74) (or  (and (= x_76 1) (= x_75 5)) (and (= x_76 2) (= x_75 2)) (and (= x_76 3) (= x_75 0))))) (forall ( (x_77 Int) (x_78 Int) (x_79 Int) ) (=> (and  (mem2 x_77 x_78 x_74) (mem2 x_77 x_79 x_74)) (= x_78 x_79))) (forall ( (x_80 Int) ) (= (and (>= x_80 1) (<= x_80 x_73)) (exists ( (x_81 Int) ) (mem2 x_80 x_81 x_74)))) (forall ( (x_82 Int) ) (=> (exists ( (x_83 Int) ) (mem2 x_83 x_82 x_74)) (mem0 x_82 g_S1_0)))))))
(assert (exists ( (x_84 Int) ) (exists ( (x_85 (P (C Int Real))) ) (and (forall ( (x_86 Real) (x_87 Int) ) (= (mem3 x_87 x_86 x_85) (or  (and (= x_87 1) (= x_86 1.2)) (and (= x_87 2) (= x_86 (- 5.3)))))) (forall ( (x_88 Int) (x_89 Real) (x_90 Real) ) (=> (and  (mem3 x_88 x_89 x_85) (mem3 x_88 x_90 x_85)) (= x_89 x_90))) (forall ( (x_91 Int) ) (= (and (>= x_91 1) (<= x_91 x_84)) (exists ( (x_92 Real) ) (mem3 x_91 x_92 x_85)))) (forall ( (x_93 Real) ) (=> (exists ( (x_94 Int) ) (mem3 x_94 x_93 x_85)) true))))))
(assert (exists ( (x_95 Int) ) (exists ( (x_96 (P (C Int Int))) ) (and (forall ( (x_97 Int) (x_98 Int) ) (= (mem2 x_98 x_97 x_96) (or  (and (= x_98 1) (= x_97 2)) (and (= x_98 2) (= x_97 3)) (and (= x_98 3) (= x_97 4))))) (forall ( (x_99 Int) (x_100 Int) (x_101 Int) ) (=> (and  (mem2 x_99 x_100 x_96) (mem2 x_99 x_101 x_96)) (= x_100 x_101))) (forall ( (x_102 Int) ) (= (and (>= x_102 1) (<= x_102 x_95)) (exists ( (x_103 Int) ) (mem2 x_102 x_103 x_96)))) (forall ( (x_104 Int) ) (=> (exists ( (x_105 Int) ) (mem2 x_105 x_104 x_96)) (mem0 x_104 g_S2_1)))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_106 Int) ) (exists ( (x_107 (P (C Int Int))) ) (and (forall ( (x_108 Int) (x_109 Int) ) (= (mem2 x_109 x_108 x_107) false)) (forall ( (x_110 Int) (x_111 Int) (x_112 Int) ) (=> (and  (mem2 x_110 x_111 x_107) (mem2 x_110 x_112 x_107)) (= x_111 x_112))) (forall ( (x_113 Int) ) (= (and (>= x_113 1) (<= x_113 x_106)) (exists ( (x_114 Int) ) (mem2 x_113 x_114 x_107)))) (forall ( (x_115 Int) ) (=> (exists ( (x_116 Int) ) (mem2 x_116 x_115 x_107)) (mem0 x_115 g_S1_0))))))))
(check-sat)
(exit)
