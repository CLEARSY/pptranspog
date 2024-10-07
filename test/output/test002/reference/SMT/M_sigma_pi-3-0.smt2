(set-option :print-success false)
(set-logic ALL)
; PO 3 0
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
(assert (forall ((x_27 (P Int)) ) (=> (forall ( (x_28 Int) ) (= (mem0 x_28 x_27) (exists ( (x_29 Int) ) (and  (mem0 x_29 g_S1_0) (= x_28 x_29))))) (= (isum x_27) 0))))
(assert (forall ((x_30 (P Int)) ) (=> (forall ( (x_31 Int) ) (= (mem0 x_31 x_30) (exists ( (x_32 Int) ) (and  (mem0 x_32 g_S2_1) (= x_31 x_32))))) (= (isum x_30) 1))))
(assert (forall ((x_33 (P Int)) ) (=> (forall ( (x_34 Int) ) (= (mem0 x_34 x_33) (exists ( (x_35 Int) ) (and  (mem0 x_35 g_S3_2) (= x_34 x_35))))) (= (isum x_33) 6))))
; Local hypotheses
; Goal
(assert (not (forall ((x_36 (P Int)) ) (=> (forall ( (x_37 Int) ) (= (mem0 x_37 x_36) (exists ( (x_38 Int) ) (and  (mem0 x_38 g_S1_0) (= x_37 x_38))))) (= (iprod x_36) 1)))))
(check-sat)
(exit)
