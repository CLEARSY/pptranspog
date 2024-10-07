(set-option :print-success false)
(set-logic ALL)
; PO 1 0
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

; Global declarations
(declare-fun g_c0_2 () Int)
(declare-fun g_ss_0 () (P (C Int (P (C Int Int)))))
(declare-fun g_tt_1 () (P (C Int (P (C Int Int)))))
(declare-fun mem2 ( Int (P (C Int Int)) (P (C Int (P (C Int Int))))) Bool)
(declare-fun mem3 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (exists ( (x_3 Int) ) (exists ( (x_4 (P (C Int (P (C Int Int))))) ) (and (forall ( (x_5 (P (C Int Int))) (x_6 Int) ) (= (mem2 x_6 x_5 x_4) (mem2 x_6 x_5 g_ss_0))) (forall ( (x_7 Int) (x_8 (P (C Int Int))) (x_9 (P (C Int Int))) ) (=> (and  (mem2 x_7 x_8 x_4) (mem2 x_7 x_9 x_4)) (forall ( (x_10 Int) (x_11 Int) ) (= (mem3 x_11 x_10 x_8) (mem3 x_11 x_10 x_9))))) (forall ( (x_12 Int) ) (= (and (>= x_12 1) (<= x_12 x_3)) (exists ( (x_13 (P (C Int Int))) ) (mem2 x_12 x_13 x_4)))) (forall ( (x_14 (P (C Int Int))) ) (=> (exists ( (x_15 Int) ) (mem2 x_15 x_14 x_4)) (exists ( (x_16 Int) ) (exists ( (x_17 (P (C Int Int))) ) (and (forall ( (x_18 Int) (x_19 Int) ) (= (mem3 x_19 x_18 x_17) (mem3 x_19 x_18 x_14))) (forall ( (x_20 Int) (x_21 Int) (x_22 Int) ) (=> (and  (mem3 x_20 x_21 x_17) (mem3 x_20 x_22 x_17)) (= x_21 x_22))) (forall ( (x_23 Int) ) (= (and (>= x_23 1) (<= x_23 x_16)) (exists ( (x_24 Int) ) (mem3 x_23 x_24 x_17)))) (forall ( (x_25 Int) ) (=> (exists ( (x_26 Int) ) (mem3 x_26 x_25 x_17)) true)))))))))))
(assert (exists ( (x_27 Int) ) (exists ( (x_28 (P (C Int (P (C Int Int))))) ) (and (forall ( (x_29 (P (C Int Int))) (x_30 Int) ) (= (mem2 x_30 x_29 x_28) (mem2 x_30 x_29 g_tt_1))) (forall ( (x_31 Int) (x_32 (P (C Int Int))) (x_33 (P (C Int Int))) ) (=> (and  (mem2 x_31 x_32 x_28) (mem2 x_31 x_33 x_28)) (forall ( (x_34 Int) (x_35 Int) ) (= (mem3 x_35 x_34 x_32) (mem3 x_35 x_34 x_33))))) (forall ( (x_36 Int) ) (= (and (>= x_36 1) (<= x_36 x_27)) (exists ( (x_37 (P (C Int Int))) ) (mem2 x_36 x_37 x_28)))) (forall ( (x_38 (P (C Int Int))) ) (=> (exists ( (x_39 Int) ) (mem2 x_39 x_38 x_28)) (exists ( (x_40 Int) ) (exists ( (x_41 (P (C Int Int))) ) (and (forall ( (x_42 Int) (x_43 Int) ) (= (mem3 x_43 x_42 x_41) (mem3 x_43 x_42 x_38))) (forall ( (x_44 Int) (x_45 Int) (x_46 Int) ) (=> (and  (mem3 x_44 x_45 x_41) (mem3 x_44 x_46 x_41)) (= x_45 x_46))) (forall ( (x_47 Int) ) (= (and (>= x_47 1) (<= x_47 x_40)) (exists ( (x_48 Int) ) (mem3 x_47 x_48 x_41)))) (forall ( (x_49 Int) ) (=> (exists ( (x_50 Int) ) (mem3 x_50 x_49 x_41)) true)))))))))))
(assert (forall ( (x_51 (P (C Int Int))) (x_52 Int) ) (= (mem2 x_52 x_51 g_tt_1) (or  (and (= x_52 1) (forall ( (x_53 Int) (x_54 Int) ) (= (mem3 x_54 x_53 x_51) (or  (and (= x_54 1) (= x_53 2)) (and (= x_54 2) (= x_53 5)))))) (and (= x_52 2) (forall ( (x_55 Int) (x_56 Int) ) (= (mem3 x_56 x_55 x_51) (or  (and (= x_56 1) (= x_55 (- 1))) (and (= x_56 2) (= x_55 (- 2))) (and (= x_56 3) (= x_55 9)))))) (and (= x_52 3) (forall ( (x_57 Int) (x_58 Int) ) (= (mem3 x_58 x_57 x_51) false))) (and (= x_52 4) (forall ( (x_59 Int) (x_60 Int) ) (= (mem3 x_60 x_59 x_51) (and (= x_60 1) (= x_59 5)))))))))
(assert true)
; Global hypotheses
(assert (exists ( (x_82 Int) (x_83 Int) (x_84 (P (C Int (P (C Int Int))))) ) (and  (forall ( (x_86 (P (C Int Int))) (x_87 Int) ) (= (mem2 x_87 x_86 x_84) (mem2 x_87 x_86 g_tt_1))) (forall ((x_88 Int) ) (=> (forall ( (x_89 Int) ) (= (exists ( (x_90 (P (C Int Int))) ) (mem2 x_89 x_90 x_84)) (and (>= x_89 1) (<= x_89 x_88)))) (and (>= x_82 1) (<= x_82 x_88)))) (forall ((x_91 Int) ) (=> (forall ( (x_92 Int) ) (= (exists ( (x_93 Int) ) (forall ((x_94 (P (C Int Int))) ) (=> (mem2 x_82 x_94 x_84) (mem3 x_92 x_93 x_94)))) (and (>= x_92 1) (<= x_92 x_91)))) (and (>= x_83 1) (<= x_83 x_91)))) (forall ((x_95 (P Int)) ) (=> (forall ( (x_96 Int) ) (= (mem0 x_96 x_95) (exists ( (x_97 Int) ) (and  (and (>= x_97 1) (<= x_97 (- x_82 1))) (forall ( (x_98 Int) ) (= (exists ( (x_99 Int) ) (forall ((x_100 (P (C Int Int))) ) (=> (mem2 x_97 x_100 x_84) (mem3 x_98 x_99 x_100)))) (and (>= x_98 1) (<= x_98 x_96)))))))) (= 2 (isum x_95)))) (forall ((x_101 (P (C Int Int)))(x_102 Int) ) (=> (and (mem2 x_82 x_101 x_84) (= x_102 5)) (mem3 x_83 x_102 x_101))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_103 Int) (x_104 Int) (x_105 (P (C Int (P (C Int Int))))) ) (and  (forall ( (x_107 (P (C Int Int))) (x_108 Int) ) (= (mem2 x_108 x_107 x_105) (mem2 x_108 x_107 g_ss_0))) (forall ((x_109 Int) ) (=> (forall ( (x_110 Int) ) (= (exists ( (x_111 (P (C Int Int))) ) (mem2 x_110 x_111 x_105)) (and (>= x_110 1) (<= x_110 x_109)))) (and (>= x_103 1) (<= x_103 x_109)))) (forall ((x_112 Int) ) (=> (forall ( (x_113 Int) ) (= (exists ( (x_114 Int) ) (forall ((x_115 (P (C Int Int))) ) (=> (mem2 x_103 x_115 x_105) (mem3 x_113 x_114 x_115)))) (and (>= x_113 1) (<= x_113 x_112)))) (and (>= x_104 1) (<= x_104 x_112)))) (forall ((x_116 (P Int)) ) (=> (forall ( (x_117 Int) ) (= (mem0 x_117 x_116) (exists ( (x_118 Int) ) (and  (and (>= x_118 1) (<= x_118 (- x_103 1))) (forall ( (x_119 Int) ) (= (exists ( (x_120 Int) ) (forall ((x_121 (P (C Int Int))) ) (=> (mem2 x_118 x_121 x_105) (mem3 x_119 x_120 x_121)))) (and (>= x_119 1) (<= x_119 x_117)))))))) (= 1 (isum x_116)))) (forall ((x_122 (P (C Int Int))) ) (=> (mem2 x_103 x_122 x_105) (mem3 x_104 g_c0_2 x_122)))))))
(check-sat)
(exit)
