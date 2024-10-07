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
(assert (and  (exists ( (x_85 Int) ) (exists ( (x_86 (P (C Int Int))) ) (and (forall ( (x_87 Int) (x_88 Int) ) (= (mem2 x_88 x_87 x_86) (or  (and (= x_88 1) (= x_87 5)) (and (= x_88 2) (= x_87 2)) (and (= x_88 3) (= x_87 0))))) (forall ( (x_89 Int) (x_90 Int) (x_91 Int) ) (=> (and  (mem2 x_89 x_90 x_86) (mem2 x_89 x_91 x_86)) (= x_90 x_91))) (forall ( (x_92 Int) ) (= (and (>= x_92 1) (<= x_92 x_85)) (exists ( (x_93 Int) ) (mem2 x_92 x_93 x_86)))) (forall ( (x_94 Int) ) (=> (exists ( (x_95 Int) ) (mem2 x_95 x_94 x_86)) (mem0 x_94 g_S1_0)))))) (not (forall ( (x_96 Int) (x_97 Int) ) (= (or  (and (= x_97 1) (= x_96 5)) (and (= x_97 2) (= x_96 2)) (and (= x_97 3) (= x_96 0))) false)))))
(assert (and  (exists ( (x_98 Int) ) (exists ( (x_99 (P (C Int Real))) ) (and (forall ( (x_100 Real) (x_101 Int) ) (= (mem3 x_101 x_100 x_99) (or  (and (= x_101 1) (= x_100 1.2)) (and (= x_101 2) (= x_100 (- 5.3)))))) (forall ( (x_102 Int) (x_103 Real) (x_104 Real) ) (=> (and  (mem3 x_102 x_103 x_99) (mem3 x_102 x_104 x_99)) (= x_103 x_104))) (forall ( (x_105 Int) ) (= (and (>= x_105 1) (<= x_105 x_98)) (exists ( (x_106 Real) ) (mem3 x_105 x_106 x_99)))) (forall ( (x_107 Real) ) (=> (exists ( (x_108 Int) ) (mem3 x_108 x_107 x_99)) true))))) (not (forall ( (x_109 Real) (x_110 Int) ) (= (or  (and (= x_110 1) (= x_109 1.2)) (and (= x_110 2) (= x_109 (- 5.3)))) false)))))
(assert (and  (exists ( (x_111 Int) ) (exists ( (x_112 (P (C Int Int))) ) (and (forall ( (x_113 Int) (x_114 Int) ) (= (mem2 x_114 x_113 x_112) (or  (and (= x_114 1) (= x_113 2)) (and (= x_114 2) (= x_113 3)) (and (= x_114 3) (= x_113 4))))) (forall ( (x_115 Int) (x_116 Int) (x_117 Int) ) (=> (and  (mem2 x_115 x_116 x_112) (mem2 x_115 x_117 x_112)) (= x_116 x_117))) (forall ( (x_118 Int) ) (= (and (>= x_118 1) (<= x_118 x_111)) (exists ( (x_119 Int) ) (mem2 x_118 x_119 x_112)))) (forall ( (x_120 Int) ) (=> (exists ( (x_121 Int) ) (mem2 x_121 x_120 x_112)) (mem0 x_120 g_S2_1)))))) (not (forall ( (x_122 Int) (x_123 Int) ) (= (or  (and (= x_123 1) (= x_122 2)) (and (= x_123 2) (= x_122 3)) (and (= x_123 3) (= x_122 4))) false)))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_124 Int) ) (exists ( (x_125 (P (C Int Int))) ) (and (forall ( (x_126 Int) (x_127 Int) ) (= (mem2 x_127 x_126 x_125) false)) (forall ( (x_128 Int) (x_129 Int) (x_130 Int) ) (=> (and  (mem2 x_128 x_129 x_125) (mem2 x_128 x_130 x_125)) (= x_129 x_130))) (forall ( (x_131 Int) ) (= (and (>= x_131 1) (<= x_131 x_124)) (exists ( (x_132 Int) ) (mem2 x_131 x_132 x_125)))) (forall ( (x_133 Int) ) (=> (exists ( (x_134 Int) ) (mem2 x_134 x_133 x_125)) (mem0 x_133 g_S1_0)))))) (not (forall ( (x_135 Int) (x_136 Int) ) (= false false))))))
(check-sat)
(exit)
