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
(assert (and  (exists ( (x_46 Int) ) (exists ( (x_47 (P (C Int Int))) ) (and (forall ( (x_48 Int) (x_49 Int) ) (= (mem2 x_49 x_48 x_47) (or  (and (= x_49 1) (= x_48 5)) (and (= x_49 2) (= x_48 2)) (and (= x_49 3) (= x_48 0))))) (forall ( (x_50 Int) (x_51 Int) (x_52 Int) ) (=> (and  (mem2 x_50 x_51 x_47) (mem2 x_50 x_52 x_47)) (= x_51 x_52))) (forall ( (x_53 Int) ) (= (and (>= x_53 1) (<= x_53 x_46)) (exists ( (x_54 Int) ) (mem2 x_53 x_54 x_47)))) (forall ( (x_55 Int) ) (=> (exists ( (x_56 Int) ) (mem2 x_56 x_55 x_47)) (mem0 x_55 g_S1_0)))))) (not (forall ( (x_57 Int) (x_58 Int) ) (= (or  (and (= x_58 1) (= x_57 5)) (and (= x_58 2) (= x_57 2)) (and (= x_58 3) (= x_57 0))) false)))))
(assert (and  (exists ( (x_59 Int) ) (exists ( (x_60 (P (C Int Real))) ) (and (forall ( (x_61 Real) (x_62 Int) ) (= (mem3 x_62 x_61 x_60) (or  (and (= x_62 1) (= x_61 1.2)) (and (= x_62 2) (= x_61 (- 5.3)))))) (forall ( (x_63 Int) (x_64 Real) (x_65 Real) ) (=> (and  (mem3 x_63 x_64 x_60) (mem3 x_63 x_65 x_60)) (= x_64 x_65))) (forall ( (x_66 Int) ) (= (and (>= x_66 1) (<= x_66 x_59)) (exists ( (x_67 Real) ) (mem3 x_66 x_67 x_60)))) (forall ( (x_68 Real) ) (=> (exists ( (x_69 Int) ) (mem3 x_69 x_68 x_60)) true))))) (not (forall ( (x_70 Real) (x_71 Int) ) (= (or  (and (= x_71 1) (= x_70 1.2)) (and (= x_71 2) (= x_70 (- 5.3)))) false)))))
; Local hypotheses
; Goal
(assert (not (and  (exists ( (x_72 Int) ) (exists ( (x_73 (P (C Int Int))) ) (and (forall ( (x_74 Int) (x_75 Int) ) (= (mem2 x_75 x_74 x_73) (or  (and (= x_75 1) (= x_74 2)) (and (= x_75 2) (= x_74 3)) (and (= x_75 3) (= x_74 4))))) (forall ( (x_76 Int) (x_77 Int) (x_78 Int) ) (=> (and  (mem2 x_76 x_77 x_73) (mem2 x_76 x_78 x_73)) (= x_77 x_78))) (forall ( (x_79 Int) ) (= (and (>= x_79 1) (<= x_79 x_72)) (exists ( (x_80 Int) ) (mem2 x_79 x_80 x_73)))) (forall ( (x_81 Int) ) (=> (exists ( (x_82 Int) ) (mem2 x_82 x_81 x_73)) (mem0 x_81 g_S2_1)))))) (not (forall ( (x_83 Int) (x_84 Int) ) (= (or  (and (= x_84 1) (= x_83 2)) (and (= x_84 2) (= x_83 3)) (and (= x_84 3) (= x_83 4))) false))))))
(check-sat)
(exit)
