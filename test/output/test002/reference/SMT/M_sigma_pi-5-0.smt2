(set-option :print-success false)
(set-logic ALL)
; PO 5 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
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


(declare-fun iprod ((P Int)) Int)

(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (iprod s) 1)
  )
 )
 :named |iprod_axiom_1|))

(assert (!
(forall ((x Int) (S (P Int)))
  (=> (not (mem0 x S))
      (forall ((T (P Int)))
        (=> (forall ((y Int)) (= (mem0 y T) (or (= x y) (mem0 y S))))
            (= (iprod T) (* (iprod S) x) )))))
  :named |iprod_axiom_2|))

; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
; Global hypotheses
(assert (forall ((x_54 (P Int)) ) (=> (forall ( (x_55 Int) ) (= (mem0 x_55 x_54) (exists ( (x_56 Int) ) (and  (mem0 x_56 g_S1_0) (= x_55 x_56))))) (= (isum x_54) 0))))
(assert (forall ((x_57 (P Int)) ) (=> (forall ( (x_58 Int) ) (= (mem0 x_58 x_57) (exists ( (x_59 Int) ) (and  (mem0 x_59 g_S2_1) (= x_58 x_59))))) (= (isum x_57) 1))))
(assert (forall ((x_60 (P Int)) ) (=> (forall ( (x_61 Int) ) (= (mem0 x_61 x_60) (exists ( (x_62 Int) ) (and  (mem0 x_62 g_S3_2) (= x_61 x_62))))) (= (isum x_60) 6))))
(assert (forall ((x_63 (P Int)) ) (=> (forall ( (x_64 Int) ) (= (mem0 x_64 x_63) (exists ( (x_65 Int) ) (and  (mem0 x_65 g_S1_0) (= x_64 x_65))))) (= (iprod x_63) 1))))
(assert (forall ((x_66 (P Int)) ) (=> (forall ( (x_67 Int) ) (= (mem0 x_67 x_66) (exists ( (x_68 Int) ) (and  (mem0 x_68 g_S2_1) (= x_67 x_68))))) (= (iprod x_66) 1))))
; Local hypotheses
; Goal
(assert (not (forall ((x_69 (P Int)) ) (=> (forall ( (x_70 Int) ) (= (mem0 x_70 x_69) (exists ( (x_71 Int) ) (and  (mem0 x_71 g_S3_2) (= x_70 x_71))))) (= (iprod x_69) 6)))))
(check-sat)
(exit)
