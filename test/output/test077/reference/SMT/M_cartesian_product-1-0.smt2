(set-option :print-success false)
(set-logic ALL)
; PO 1 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(declare-sort C 2)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g__c0_1_3 () Int)
(declare-fun g__c0_2_2 () Int)
(declare-fun g_s0_0 () (P Int))
(declare-fun g_s1_1 () (P Int))
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_s0_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_s1_1) true)))
(assert (and true true))
; Global hypotheses
(assert (and (mem0 g__c0_2_2 g_s0_0) (mem0 g__c0_1_3 g_s1_1)))
; Local hypotheses
; Goal
(assert (not (and (or  (= 2 2) (= 2 5) (= 2 7)) (and (>= 5 0) (<= 5 10)))))
(check-sat)
(exit)
