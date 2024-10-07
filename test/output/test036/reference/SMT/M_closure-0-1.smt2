(set-option :print-success false)
(set-logic ALL)
; PO 0 1
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_nn_3 () Int)
(declare-fun g_rr_2 () (P (C Int Int)))
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
(declare-fun mem_it0 ( Int Int (P (C Int Int)) Int) Bool)
(assert (!
 (forall ((f (P (C Int Int))) (x_8 Int) (x_9 Int))
  (=> (mem_it0 x_8 x_9 f 0) (and  (= x_8 x_9) (exists ( (x_10 Int)) (mem2 x_8 x_9 f))))
 )
 :named |iterate_axiom_1 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (x_8 Int))
  (=> (exists ( (x_9 Int)) (mem2 x_8 x_9 f)) (mem_it0 x_8 x_8 f 0))
 )
 :named |iterate_axiom_2 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (n Int) (x_8 Int) (x_9 Int))
  (=>
   (>= n 1)
   (=>
    (mem_it0 x_8 x_9 f n)
    (exists ( (x_10 Int)) (and (mem_it0 x_8 x_10 f (- n 1)) (mem2 x_10 x_9 f)))
   )
  )
 )
 :named |iterate_axiom_3 POW(PROD(INT, INT))|
))
(assert (!
 (forall ((f (P (C Int Int))) (n Int) (x_8 Int) (x_9 Int))
  (=>
   (>= n 1)
   (=>
    (exists ( (x_10 Int)) (and (mem_it0 x_8 x_10 f (- n 1)) (mem2 x_10 x_9 f)))
    (mem_it0 x_8 x_9 f n)
   )
  )
 )
 :named |iterate_axiom_4 POW(PROD(INT, INT))|
))

; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (forall ( (x_5 Int) (x_6 Int) ) (=> (mem2 x_6 x_5 g_rr_2) (and (mem0 x_6 g_s0_0) (mem0 x_5 g_s1_1)))))
(assert true)
(assert true)
(assert (<= 0 g_nn_3))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_rr_2) (exists ( (x_13 Int) ) (and  (>= x_13 0) (mem_it0 x_12 x_11 g_rr_2 x_13)))))))
(check-sat)
(exit)
