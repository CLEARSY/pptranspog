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
(assert (exists ( (x_49 Int) ) (and (exists ( (x_50 (P (C Int Int))) ) (and (forall ( (x_51 Int) (x_52 Int) ) (= (mem2 x_52 x_51 x_50) (or  (and (= x_52 1) (= x_51 5)) (and (= x_52 2) (= x_51 2)) (and (= x_52 3) (= x_51 0))))) (forall ( (x_53 Int) (x_54 Int) (x_55 Int) ) (=> (and  (mem2 x_53 x_54 x_50) (mem2 x_53 x_55 x_50)) (= x_54 x_55))) (forall ( (x_56 Int) ) (= (and (>= x_56 1) (<= x_56 x_49)) (exists ( (x_57 Int) ) (mem2 x_56 x_57 x_50)))) (forall ( (x_58 Int) ) (=> (exists ( (x_59 Int) ) (mem2 x_59 x_58 x_50)) (mem0 x_58 g_S1_0))))) (forall ( (x_60 Int) (x_61 Int) (x_62 Int) ) (=> (and  (or  (and (= x_61 1) (= x_60 5)) (and (= x_61 2) (= x_60 2)) (and (= x_61 3) (= x_60 0))) (or  (and (= x_62 1) (= x_60 5)) (and (= x_62 2) (= x_60 2)) (and (= x_62 3) (= x_60 0)))) (= x_61 x_62))))))
(assert (exists ( (x_63 Int) ) (and (exists ( (x_64 (P (C Int Real))) ) (and (forall ( (x_65 Real) (x_66 Int) ) (= (mem3 x_66 x_65 x_64) (or  (and (= x_66 1) (= x_65 1.2)) (and (= x_66 2) (= x_65 (- 5.3)))))) (forall ( (x_67 Int) (x_68 Real) (x_69 Real) ) (=> (and  (mem3 x_67 x_68 x_64) (mem3 x_67 x_69 x_64)) (= x_68 x_69))) (forall ( (x_70 Int) ) (= (and (>= x_70 1) (<= x_70 x_63)) (exists ( (x_71 Real) ) (mem3 x_70 x_71 x_64)))) (forall ( (x_72 Real) ) (=> (exists ( (x_73 Int) ) (mem3 x_73 x_72 x_64)) true)))) (forall ( (x_74 Real) (x_75 Int) (x_76 Int) ) (=> (and  (or  (and (= x_75 1) (= x_74 1.2)) (and (= x_75 2) (= x_74 (- 5.3)))) (or  (and (= x_76 1) (= x_74 1.2)) (and (= x_76 2) (= x_74 (- 5.3))))) (= x_75 x_76))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_77 Int) ) (and (exists ( (x_78 (P (C Int Int))) ) (and (forall ( (x_79 Int) (x_80 Int) ) (= (mem2 x_80 x_79 x_78) (or  (and (= x_80 1) (= x_79 2)) (and (= x_80 2) (= x_79 3)) (and (= x_80 3) (= x_79 4))))) (forall ( (x_81 Int) (x_82 Int) (x_83 Int) ) (=> (and  (mem2 x_81 x_82 x_78) (mem2 x_81 x_83 x_78)) (= x_82 x_83))) (forall ( (x_84 Int) ) (= (and (>= x_84 1) (<= x_84 x_77)) (exists ( (x_85 Int) ) (mem2 x_84 x_85 x_78)))) (forall ( (x_86 Int) ) (=> (exists ( (x_87 Int) ) (mem2 x_87 x_86 x_78)) (mem0 x_86 g_S2_1))))) (forall ( (x_88 Int) (x_89 Int) (x_90 Int) ) (=> (and  (or  (and (= x_89 1) (= x_88 2)) (and (= x_89 2) (= x_88 3)) (and (= x_89 3) (= x_88 4))) (or  (and (= x_90 1) (= x_88 2)) (and (= x_90 2) (= x_88 3)) (and (= x_90 3) (= x_88 4)))) (= x_89 x_90)))))))
(check-sat)
(exit)
