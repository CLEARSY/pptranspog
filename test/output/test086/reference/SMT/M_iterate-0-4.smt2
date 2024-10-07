(set-option :print-success false)
(set-logic ALL)
; PO 0 4
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_c0_5 () Int)
(declare-fun g_c1_6 () Int)
(declare-fun g_ii_4 () Int)
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun g_tt_3 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem_it0 ( Int Int (P (C Int Int)) Int) Bool)
(assert (!
 (forall ((f (P (C Int Int))) (x_11 Int) (x_12 Int))
  (=> (mem_it0 x_11 x_12 f 0) (and  (= x_11 x_12) (exists ( (x_13 Int)) (mem2 x_11 x_12 f))))
 )
 :named |iterate_axiom_1 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (x_11 Int))
  (=> (exists ( (x_12 Int)) (mem2 x_11 x_12 f)) (mem_it0 x_11 x_11 f 0))
 )
 :named |iterate_axiom_2 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (n Int) (x_11 Int) (x_12 Int))
  (=>
   (>= n 1)
   (=>
    (mem_it0 x_11 x_12 f n)
    (exists ( (x_13 Int)) (and (mem_it0 x_11 x_13 f (- n 1)) (mem2 x_13 x_12 f)))
   )
  )
 )
 :named |iterate_axiom_3 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (n Int) (x_11 Int) (x_12 Int))
  (=>
   (>= n 1)
   (=>
    (exists ( (x_13 Int)) (and (mem_it0 x_11 x_13 f (- n 1)) (mem2 x_13 x_12 f)))
    (mem_it0 x_11 x_12 f n)
   )
  )
 )
 :named |iterate_axiom_4 POW(PROD(INT, INT))|
))

; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert (forall ( (x_7 Int) (x_8 Int) ) (=> (mem2 x_8 x_7 g_tt_3) (and true true))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_tt_3) (or  (and (= x_10 2) (= x_9 6)) (and (= x_10 5) (= x_9 9)) (and (= x_10 7) (= x_9 9)) (and (= x_10 5) (= x_9 3))))))
(assert true)
(assert true)
(assert (<= 0 g_ii_4))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (mem_it0 g_c0_5 g_c1_6 g_rr_2 0)))
(check-sat)
(exit)
