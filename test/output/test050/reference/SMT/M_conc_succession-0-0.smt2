(set-option :print-success false)
(set-logic ALL)
; PO 0 0
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
; Local hypotheses
; Goal
(assert (not (exists ( (x_61 Int) (x_62 Int) (x_63 (P (C Int (P (C Int Int))))) ) (and  (forall ( (x_65 (P (C Int Int))) (x_66 Int) ) (= (mem2 x_66 x_65 x_63) (mem2 x_66 x_65 g_tt_1))) (forall ((x_67 Int) ) (=> (forall ( (x_68 Int) ) (= (exists ( (x_69 (P (C Int Int))) ) (mem2 x_68 x_69 x_63)) (and (>= x_68 1) (<= x_68 x_67)))) (and (>= x_61 1) (<= x_61 x_67)))) (forall ((x_70 Int) ) (=> (forall ( (x_71 Int) ) (= (exists ( (x_72 Int) ) (forall ((x_73 (P (C Int Int))) ) (=> (mem2 x_61 x_73 x_63) (mem3 x_71 x_72 x_73)))) (and (>= x_71 1) (<= x_71 x_70)))) (and (>= x_62 1) (<= x_62 x_70)))) (forall ((x_74 (P Int)) ) (=> (forall ( (x_75 Int) ) (= (mem0 x_75 x_74) (exists ( (x_76 Int) ) (and  (and (>= x_76 1) (<= x_76 (- x_61 1))) (forall ( (x_77 Int) ) (= (exists ( (x_78 Int) ) (forall ((x_79 (P (C Int Int))) ) (=> (mem2 x_76 x_79 x_63) (mem3 x_77 x_78 x_79)))) (and (>= x_77 1) (<= x_77 x_75)))))))) (= 2 (isum x_74)))) (forall ((x_80 (P (C Int Int)))(x_81 Int) ) (=> (and (mem2 x_61 x_80 x_63) (= x_81 5)) (mem3 x_62 x_81 x_80)))))))
(check-sat)
(exit)
