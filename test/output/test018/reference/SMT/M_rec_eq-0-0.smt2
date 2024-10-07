(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g__res1_1_0 () Int)
(declare-fun g__res1_2_1 () Bool)
(declare-fun g__res2_1_2 () Int)
(declare-fun g__res2_2_3 () Bool)
; Defines
(assert (and  (= g__res1_1_0 12) (= g__res1_2_1 true)))
(assert (and  (= g__res2_1_2 9) (= g__res2_2_3 false)))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (and  (= g__res1_1_0 g__res2_1_2) (= g__res1_2_1 g__res2_2_3))))
(check-sat)
(exit)
