(set-option :print-success false)
(set-logic ALL)
; PO 3 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_ss_0 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int Int))) ) (and (forall ( (x_5 Int) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 Int) (x_9 Int) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (= x_8 x_9))) (forall ( (x_10 Int) ) (= (and (>= x_10 1) (<= x_10 x_3)) (exists ( (x_11 Int) ) (mem2 x_10 x_11 x_4)))) (forall ( (x_12 Int) ) (=> (exists ( (x_13 Int) ) (mem2 x_13 x_12 x_4)) true))))))
(assert (forall ( (x_14 Int) (x_15 Int) ) (= (mem2 x_15 x_14 g_ss_0) (or  (and (= x_15 1) (= x_14 7)) (and (= x_15 2) (= x_14 18)) (and (= x_15 3) (= x_14 18)) (and (= x_15 4) (= x_14 21))))))
; Global hypotheses
(assert (forall ((x_81 Int)(x_82 Int) ) (=> (and (= x_81 1) (= x_82 7)) (mem2 x_81 x_82 g_ss_0))))
(assert (forall ((x_83 Int)(x_84 Int) ) (=> (and (= x_83 1) (= x_84 7)) (mem2 x_83 x_84 g_ss_0))))
(assert (forall ((x_85 Int)(x_86 Int) ) (=> (and (forall ( (x_87 Int) ) (= (exists ( (x_88 Int) ) (mem2 x_87 x_88 g_ss_0)) (and (>= x_87 1) (<= x_87 x_85)))) (= x_86 21)) (mem2 x_85 x_86 g_ss_0))))
(assert (forall ((x_89 Int)(x_90 Int) ) (=> (and (forall ( (x_91 Int) ) (= (exists ( (x_92 Int) ) (mem2 x_91 x_92 g_ss_0)) (and (>= x_91 1) (<= x_91 x_89)))) (= x_90 21)) (mem2 x_89 x_90 g_ss_0))))
(assert (forall ((x_93 Int)(x_94 Int) ) (=> (and (= x_93 1) (and  (forall ((x_96 Int)(x_97 Int)(x_98 Int) ) (=> (and (forall ( (x_99 Int) ) (= (exists ( (x_100 Int) ) (and  (forall ((x_102 Int) ) (=> (forall ( (x_103 Int) ) (= (exists ( (x_104 Int) ) (mem2 x_103 x_104 g_ss_0)) (and (>= x_103 1) (<= x_103 x_102)))) (and (>= x_99 1) (<= x_99 x_102)))) (forall ((x_105 Int) ) (=> (forall ((x_106 Int) ) (=> (forall ( (x_107 Int) ) (= (exists ( (x_108 Int) ) (mem2 x_107 x_108 g_ss_0)) (and (>= x_107 1) (<= x_107 x_106)))) (= x_105 (+ (- x_106 x_99) 1)))) (mem2 x_105 x_100 g_ss_0))))) (and (>= x_99 1) (<= x_99 x_96)))) (forall ( (x_109 Int) ) (= (exists ( (x_110 Int) ) (and  (forall ((x_112 Int) ) (=> (forall ( (x_113 Int) ) (= (exists ( (x_114 Int) ) (mem2 x_113 x_114 g_ss_0)) (and (>= x_113 1) (<= x_113 x_112)))) (and (>= x_109 1) (<= x_109 x_112)))) (forall ((x_115 Int) ) (=> (forall ((x_116 Int) ) (=> (forall ( (x_117 Int) ) (= (exists ( (x_118 Int) ) (mem2 x_117 x_118 g_ss_0)) (and (>= x_117 1) (<= x_117 x_116)))) (= x_115 (+ (- x_116 x_109) 1)))) (mem2 x_115 x_110 g_ss_0))))) (and (>= x_109 1) (<= x_109 x_97)))) (forall ( (x_119 Int) ) (= (exists ( (x_120 Int) ) (mem2 x_119 x_120 g_ss_0)) (and (>= x_119 1) (<= x_119 x_98))))) (and (>= x_96 1) (<= x_97 x_98)))) (forall ((x_121 Int) ) (=> (forall ((x_122 Int)(x_123 Int) ) (=> (and (forall ( (x_124 Int) ) (= (exists ( (x_125 Int) ) (mem2 x_124 x_125 g_ss_0)) (and (>= x_124 1) (<= x_124 x_122)))) (forall ( (x_126 Int) ) (= (exists ( (x_127 Int) ) (and  (forall ((x_129 Int) ) (=> (forall ( (x_130 Int) ) (= (exists ( (x_131 Int) ) (mem2 x_130 x_131 g_ss_0)) (and (>= x_130 1) (<= x_130 x_129)))) (and (>= x_126 1) (<= x_126 x_129)))) (forall ((x_132 Int) ) (=> (forall ((x_133 Int) ) (=> (forall ( (x_134 Int) ) (= (exists ( (x_135 Int) ) (mem2 x_134 x_135 g_ss_0)) (and (>= x_134 1) (<= x_134 x_133)))) (= x_132 (+ (- x_133 x_126) 1)))) (mem2 x_132 x_127 g_ss_0))))) (and (>= x_126 1) (<= x_126 x_123))))) (= x_121 (+ (- x_122 x_123) 1)))) (mem2 x_121 x_94 g_ss_0))))) (mem2 x_93 x_94 g_ss_0))))
; Local hypotheses
; Goal
(assert (not (forall ((x_136 Int)(x_137 Int) ) (=> (and (forall ( (x_138 Int) ) (= (exists ( (x_139 Int) ) (mem2 x_138 x_139 g_ss_0)) (and (>= x_138 1) (<= x_138 x_136)))) (and  (forall ((x_141 Int) ) (=> (forall ( (x_142 Int) ) (= (exists ( (x_143 Int) ) (mem2 x_142 x_143 g_ss_0)) (and (>= x_142 1) (<= x_142 x_141)))) (and (>= 1 1) (<= 1 x_141)))) (forall ((x_144 Int) ) (=> (forall ((x_145 Int) ) (=> (forall ( (x_146 Int) ) (= (exists ( (x_147 Int) ) (mem2 x_146 x_147 g_ss_0)) (and (>= x_146 1) (<= x_146 x_145)))) (= x_144 (+ (- x_145 1) 1)))) (mem2 x_144 x_137 g_ss_0))))) (mem2 x_136 x_137 g_ss_0)))))
(check-sat)
(exit)
