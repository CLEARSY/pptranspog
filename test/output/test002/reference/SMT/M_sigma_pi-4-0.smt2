(set-option :print-success false)
(set-logic AUFNIRA)
; PO 4 0 
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-sort C 2)
(declare-sort String 0)
(declare-sort Float 0)
(declare-fun divB (Int Int) Int)
(assert (!
 (forall ((x Int) (y Int))
  (!
   (and
    (=> (and (<= 0 x) (< 0 y)) (= (divB x y) (div x y)))
    (=> (and (<= x 0) (< 0 y)) (= (divB x y) (- 0 (div (- 0 x) y))))
    (=> (and (<= 0 x) (< y 0)) (= (divB x y) (div x y)))
    (=> (and (<= x 0) (< y 0)) (= (divB x y) (div (- 0 x) (- 0 y))))
   )
   :pattern ((divB x y))
  )
 )
 :named |divB_axiom|
))
(declare-fun exp (Int Int) Int)
(assert (!
 (forall ((x Int))
  (!
   (= (exp x 0) 1)
   :pattern ((exp x 0))
  )
 )
 :named |exp_axiom_1|
))
(assert (!
 (forall ((x Int) (n Int))
  (!
   (=> (>= n 1) (= (exp x n) (* x (exp x (- n 1)))))
   :pattern ((exp x n))
  )
 )
 :named |exp_axiom_2|
))
(declare-fun rexp (Real Int) Real)
(assert (!
 (forall ((x Real))
  (!
   (=> (not (= x 0.0)) (= (rexp x 0) 1.0))
   :pattern ((rexp x 0))
  )
 )
 :named |rexp_axiom_1|
))
(assert (!
 (forall ((x Real) (n Int))
  (!
   (=> (>= n 1) (= (rexp x n) (* x (rexp x (- n 1)))))
   :pattern ((rexp x n))
  )
 )
 :named |rexp_axiom_2|
))
(declare-fun ceiling (Real) Int)
(assert (!
 (forall ((x Real))
  (!
   (=> (is_int x) (= (ceiling x) (to_int x)))
   :pattern ((ceiling x))
  )
 )
 :named |ceiling_axiom_1|
))
(assert (!
 (forall ((x Real))
  (!
   (=> (not (is_int x)) (= (ceiling x) (+ (to_int x) 1)))
   :pattern ((ceiling x))
  )
 )
 :named |ceiling_axiom_2|
))
(declare-fun mem0 (Int (P Int)) Bool)

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
            (= (iprod T) (+ (iprod S) x) )))))
  :named |iprod_axiom_2|))

(declare-fun mem1 (Real (P Real)) Bool)

(declare-fun rsum ((P Real)) Real)

(assert (!
 (forall ((s (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x s)))
   (= (rsum s) 0.0)
  )
 )
 :named |rsum_axiom_1|))

(assert (!
(forall ((x Real) (S (P Real)))
  (=> (not (mem1 x S))
      (forall ((T (P Real)))
        (=> (forall ((y Real)) (= (mem1 y T) (or (= x y) (mem1 y S))))
            (= (rsum T) (+ (rsum S) x) )))))
  :named |rsum_axiom_2|))


(declare-fun rprod ((P Real)) Real)

(assert (!
 (forall ((S (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x S)))
   (= (rprod S) 1.0)
  )
 )
 :named |rprod_axiom_1|))

(assert (!
(forall ((x Real) (S (P Real)))
  (=> (not (mem1 x S))
      (forall ((T (P Real)))
        (=> (forall ((y Real)) (= (mem1 y T) (or (= x y) (mem1 y S))))
            (= (rprod T) (+ (rprod S) x) )))))
  :named |rprod_axiom_2|))

(declare-fun fle (Float Float) Bool)
(declare-fun flt (Float Float) Bool)
(declare-fun fge (Float Float) Bool)
(declare-fun fgt (Float Float) Bool)
(declare-fun fadd (Float Float) Float)
(declare-fun fsub (Float Float) Float)
(declare-fun fmul (Float Float) Float)
(declare-fun fdiv (Float Float) Float)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_S1_0 () (P Int))
(declare-fun g_S2_1 () (P Int))
(declare-fun g_S3_2 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (= (and (<= 0 x_3) (<= x_3 MaxInt)) (and (>= x_3 0) (<= x_3 MaxInt)))))
(assert (forall ( (x_4 Int) ) (= (and (>= x_4 MinInt) (<= x_4 MaxInt)) (and (>= x_4 MinInt) (<= x_4 MaxInt)))))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S1_0) true)))
(assert (forall ( (x_6 Int) ) (=> (mem0 x_6 g_S2_1) true)))
(assert (forall ( (x_7 Int) ) (=> (mem0 x_7 g_S3_2) true)))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S1_0) false)))
(assert (forall ( (x_9 Int) ) (= (mem0 x_9 g_S2_1) (= x_9 1))))
(assert (forall ( (x_10 Int) ) (= (mem0 x_10 g_S3_2) (or  (= x_10 1) (= x_10 2) (= x_10 3)))))
; Global hypotheses
(assert (forall ((x_41 (P Int)) ) (=> (forall ( (x_42 Int) ) (= (mem0 x_42 x_41) (exists ( (x_43 Int) ) (and  (mem0 x_43 g_S1_0) (= x_42 x_43))))) (= (isum x_41) 0))))
(assert (forall ((x_44 (P Int)) ) (=> (forall ( (x_45 Int) ) (= (mem0 x_45 x_44) (exists ( (x_46 Int) ) (and  (mem0 x_46 g_S2_1) (= x_45 x_46))))) (= (isum x_44) 1))))
(assert (forall ((x_47 (P Int)) ) (=> (forall ( (x_48 Int) ) (= (mem0 x_48 x_47) (exists ( (x_49 Int) ) (and  (mem0 x_49 g_S3_2) (= x_48 x_49))))) (= (isum x_47) 6))))
(assert (forall ((x_50 (P Int)) ) (=> (forall ( (x_51 Int) ) (= (mem0 x_51 x_50) (exists ( (x_52 Int) ) (and  (mem0 x_52 g_S1_0) (= x_51 x_52))))) (= (prod x_50) 1))))
; Local hypotheses
; Goal
(assert (not (forall ((x_53 (P Int)) ) (=> (forall ( (x_54 Int) ) (= (mem0 x_54 x_53) (exists ( (x_55 Int) ) (and  (mem0 x_55 g_S2_1) (= x_54 x_55))))) (= (prod x_53) 1)))))
(check-sat)
(exit)
