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
(assert (exists ( (x_40 Int) ) (exists ( (x_41 (P (C Int Int))) ) (and (forall ( (x_42 Int) (x_43 Int) ) (= (mem2 x_43 x_42 x_41) (or  (and (= x_43 1) (= x_42 5)) (and (= x_43 2) (= x_42 2)) (and (= x_43 3) (= x_42 0))))) (forall ( (x_44 Int) (x_45 Int) (x_46 Int) ) (=> (and  (mem2 x_44 x_45 x_41) (mem2 x_44 x_46 x_41)) (= x_45 x_46))) (forall ( (x_47 Int) ) (= (and (>= x_47 1) (<= x_47 x_40)) (exists ( (x_48 Int) ) (mem2 x_47 x_48 x_41)))) (forall ( (x_49 Int) ) (=> (exists ( (x_50 Int) ) (mem2 x_50 x_49 x_41)) (mem0 x_49 g_S1_0)))))))
(assert (exists ( (x_51 Int) ) (exists ( (x_52 (P (C Int Real))) ) (and (forall ( (x_53 Real) (x_54 Int) ) (= (mem3 x_54 x_53 x_52) (or  (and (= x_54 1) (= x_53 1.2)) (and (= x_54 2) (= x_53 (- 5.3)))))) (forall ( (x_55 Int) (x_56 Real) (x_57 Real) ) (=> (and  (mem3 x_55 x_56 x_52) (mem3 x_55 x_57 x_52)) (= x_56 x_57))) (forall ( (x_58 Int) ) (= (and (>= x_58 1) (<= x_58 x_51)) (exists ( (x_59 Real) ) (mem3 x_58 x_59 x_52)))) (forall ( (x_60 Real) ) (=> (exists ( (x_61 Int) ) (mem3 x_61 x_60 x_52)) true))))))
; Local hypotheses
; Goal
(assert (not (exists ( (x_62 Int) ) (exists ( (x_63 (P (C Int Int))) ) (and (forall ( (x_64 Int) (x_65 Int) ) (= (mem2 x_65 x_64 x_63) (or  (and (= x_65 1) (= x_64 2)) (and (= x_65 2) (= x_64 3)) (and (= x_65 3) (= x_64 4))))) (forall ( (x_66 Int) (x_67 Int) (x_68 Int) ) (=> (and  (mem2 x_66 x_67 x_63) (mem2 x_66 x_68 x_63)) (= x_67 x_68))) (forall ( (x_69 Int) ) (= (and (>= x_69 1) (<= x_69 x_62)) (exists ( (x_70 Int) ) (mem2 x_69 x_70 x_63)))) (forall ( (x_71 Int) ) (=> (exists ( (x_72 Int) ) (mem2 x_72 x_71 x_63)) (mem0 x_71 g_S2_1))))))))
(check-sat)
(exit)
