(set-option :print-success false)
(set-logic AUFNIRA)
; PO 6 0 
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
(declare-fun sum ((P Int)) Int)
(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (sum s) 0)
  )
 )
 :named |sum_axiom_1|
))
(assert (!
 (forall ((s1 (P Int)) (s2 (P Int)) (e Int) (n Int))
  (=>
   (and
    (= (sum s1) n)
    (not (mem0 e s1))
    (forall ((x Int)) (=> (mem0 x s2) (or (= x e) (mem0 x s1))))
    (forall ((x Int)) (=> (or (= x e) (mem0 x s1)) (mem0 x s2)))
   )
   (= (sum s2) (+ n e))
  )
 )
 :named |sum_axiom_2|
))
(declare-fun prod ((P Int)) Int)
(assert (!
 (forall ((s (P Int)))
  (=>
   (forall ((x Int)) (not (mem0 x s)))
   (= (prod s) 1)
  )
 )
 :named |prod_axiom_1|
))
(assert (!
 (forall ((s1 (P Int)) (s2 (P Int)) (e Int) (n Int))
  (=>
   (and
    (= (prod s1) n)
    (not (mem0 e s1))
    (forall ((x Int)) (=> (mem0 x s2) (or (= x e) (mem0 x s1))))
    (forall ((x Int)) (=> (or (= x e) (mem0 x s1)) (mem0 x s2)))
   )
   (= (prod s2) (* n e))
  )
 )
 :named |prod_axiom_2|
))
(declare-fun mem1 (Real (P Real)) Bool)
(declare-fun rsum ((P Real)) Real)
(assert (!
 (forall ((s (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x s)))
   (= (rsum s) 0.0)
  )
 )
 :named |rsum_axiom_1|
))
(assert (!
 (forall ((s1 (P Real)) (s2 (P Real)) (e Real) (n Real))
  (=>
   (and
    (= (rsum s1) n)
    (not (mem1 e s1))
    (forall ((x Real)) (=> (mem1 x s2) (or (= x e) (mem1 x s1))))
    (forall ((x Real)) (=> (or (= x e) (mem1 x s1)) (mem1 x s2)))
   )
   (= (rsum s2) (+ n e))
  )
 )
 :named |rsum_axiom_2|
))
(declare-fun rprod ((P Real)) Real)
(assert (!
 (forall ((s (P Real)))
  (=>
   (forall ((x Real)) (not (mem1 x s)))
   (= (rprod s) 1.0)
  )
 )
 :named |rprod_axiom_1|
))
(assert (!
 (forall ((s1 (P Real)) (s2 (P Real)) (e Real) (n Real))
  (=>
   (and
    (= (rprod s1) n)
    (not (mem1 e s1))
    (forall ((x Real)) (=> (mem1 x s2) (or (= x e) (mem1 x s1))))
    (forall ((x Real)) (=> (or (= x e) (mem1 x s1)) (mem1 x s2)))
   )
   (= (rprod s2) (* n e))
  )
 )
 :named |rprod_axiom_2|
))
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
(declare-fun g_c1_1 () Int)
(declare-fun g_s1_0 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (= (and (<= 0 x_3) (<= x_3 MaxInt)) (and (>= x_3 0) (<= x_3 MaxInt)))))
(assert (forall ( (x_4 Int) ) (= (and (>= x_4 MinInt) (<= x_4 MaxInt)) (and (>= x_4 MinInt) (<= x_4 MaxInt)))))
(assert true)
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_s1_0) true)))
; Global hypotheses
(assert (= 1 (+ 1 1)))
(assert (= g_c1_1 (+ g_c1_1 1)))
(assert (forall ( (x_20 Int) ) (= (exists ( (x_21 Int) ) (and  (= x_21 g_c1_1) (= x_20 (+ x_21 1)))) (mem0 x_20 g_s1_0))))
(assert (forall ( (x_22 Int) ) (= (exists ( (x_23 Int) ) (and  (mem0 x_23 g_s1_0) (= x_22 (+ x_23 1)))) (mem0 x_22 g_s1_0))))
(assert (= 1 (- 1 1)))
(assert (= g_c1_1 (- g_c1_1 1)))
; Local hypotheses
; Goal
(assert (not (forall ( (x_24 Int) ) (= (exists ( (x_25 Int) ) (and  (= x_25 g_c1_1) (= x_24 (- x_25 1)))) (mem0 x_24 g_s1_0)))))
(check-sat)
(exit)