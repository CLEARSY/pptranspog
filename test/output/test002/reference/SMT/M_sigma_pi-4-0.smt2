(set-option :print-success false)
(set-logic ALL)
; PO 4 0
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
(assert (forall ((x_39 (P Int)) ) (=> (forall ( (x_40 Int) ) (= (mem0 x_40 x_39) (exists ( (x_41 Int) ) (and  (mem0 x_41 g_S1_0) (= x_40 x_41))))) (= (isum x_39) 0))))
(assert (forall ((x_42 (P Int)) ) (=> (forall ( (x_43 Int) ) (= (mem0 x_43 x_42) (exists ( (x_44 Int) ) (and  (mem0 x_44 g_S2_1) (= x_43 x_44))))) (= (isum x_42) 1))))
(assert (forall ((x_45 (P Int)) ) (=> (forall ( (x_46 Int) ) (= (mem0 x_46 x_45) (exists ( (x_47 Int) ) (and  (mem0 x_47 g_S3_2) (= x_46 x_47))))) (= (isum x_45) 6))))
(assert (forall ((x_48 (P Int)) ) (=> (forall ( (x_49 Int) ) (= (mem0 x_49 x_48) (exists ( (x_50 Int) ) (and  (mem0 x_50 g_S1_0) (= x_49 x_50))))) (= (iprod x_48) 1))))
; Local hypotheses
; Goal
(assert (not (forall ((x_51 (P Int)) ) (=> (forall ( (x_52 Int) ) (= (mem0 x_52 x_51) (exists ( (x_53 Int) ) (and  (mem0 x_53 g_S2_1) (= x_52 x_53))))) (= (iprod x_51) 1)))))
(check-sat)
(exit)
