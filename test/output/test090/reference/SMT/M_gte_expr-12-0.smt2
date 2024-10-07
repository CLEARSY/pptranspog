(set-option :print-success false)
(set-logic ALL)
; PO 12 0
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
(declare-fun g_empty_seq_8 () (P (C Int Int)))
(declare-fun g_fun1_4 () (P (C Int Int)))
(declare-fun g_fun2_5 () (P (C Int Int)))
(declare-fun g_fun3_6 () (P (C Int Int)))
(declare-fun g_rel1_3 () (P (C Int Int)))
(declare-fun g_ss_7 () (P (C Int Int)))
(declare-fun mem2 ( Int Int (P (C Int Int))) Bool)
; Defines
(assert (forall ( (x_3 Int) ) (=> (mem0 x_3 g_S1_0) true)))
(assert (forall ( (x_4 Int) ) (=> (mem0 x_4 g_S2_1) true)))
(assert (forall ( (x_5 Int) ) (=> (mem0 x_5 g_S3_2) true)))
(assert (forall ( (x_6 Int) ) (= (mem0 x_6 g_S1_0) false)))
(assert (forall ( (x_7 Int) ) (= (mem0 x_7 g_S2_1) (= x_7 1))))
(assert (forall ( (x_8 Int) ) (= (mem0 x_8 g_S3_2) (or  (= x_8 1) (= x_8 2) (= x_8 3)))))
(assert (forall ( (x_9 Int) (x_10 Int) ) (= (mem2 x_10 x_9 g_rel1_3) (or  (and (= x_10 2) (= x_9 7)) (and (= x_10 5) (= x_9 9)) (and (= x_10 2) (= x_9 6)) (and (= x_10 7) (= x_9 9)) (and (= x_10 5) (= x_9 3))))))
(assert (and (forall ( (x_11 Int) (x_12 Int) ) (=> (mem2 x_12 x_11 g_fun1_4) (and true true))) (forall ( (x_13 Int) (x_14 Int) (x_15 Int) ) (=> (and  (mem2 x_13 x_14 g_fun1_4) (mem2 x_13 x_15 g_fun1_4)) (= x_14 x_15)))))
(assert (forall ( (x_16 Int) ) (= (exists ( (x_17 Int) ) (mem2 x_16 x_17 g_fun1_4)) (and (>= x_16 0) (<= x_16 2)))))
(assert (forall ( (x_18 Int) ) (= (exists ( (x_19 Int) ) (mem2 x_19 x_18 g_fun1_4)) (and (>= x_18 1) (<= x_18 3)))))
(assert (forall ( (l_xx Int) ) (=> (exists ( (x_20 Int) ) (mem2 l_xx x_20 g_fun1_4)) (forall ((x_21 Int) ) (=> (= x_21 (+ l_xx 1)) (mem2 l_xx x_21 g_fun1_4))))))
(assert (forall ( (x_22 Int) (x_23 Int) ) (= (mem2 x_23 x_22 g_fun2_5) (and  (and (>= x_23 0) (<= x_23 2)) (= x_22 (+ x_23 1))))))
(assert (forall ( (x_24 Int) (x_25 Int) ) (= (mem2 x_25 x_24 g_fun3_6) (and  (and (>= x_25 0) (<= x_25 2)) (= x_24 (+ x_25 1))))))
(assert (exists ( (x_26 Int) ) (exists ( (x_27 (P (C Int Int))) ) (and (forall ( (x_28 Int) (x_29 Int) ) (= (mem2 x_29 x_28 x_27) (mem2 x_29 x_28 g_ss_7))) (forall ( (x_30 Int) (x_31 Int) (x_32 Int) ) (=> (and  (mem2 x_30 x_31 x_27) (mem2 x_30 x_32 x_27)) (= x_31 x_32))) (forall ( (x_33 Int) ) (= (and (>= x_33 1) (<= x_33 x_26)) (exists ( (x_34 Int) ) (mem2 x_33 x_34 x_27)))) (forall ( (x_35 Int) ) (=> (exists ( (x_36 Int) ) (mem2 x_36 x_35 x_27)) true))))))
(assert (forall ( (x_37 Int) (x_38 Int) ) (= (mem2 x_38 x_37 g_ss_7) (or  (and (= x_38 1) (= x_37 7)) (and (= x_38 2) (= x_37 18)) (and (= x_38 3) (= x_37 18)) (and (= x_38 4) (= x_37 21))))))
(assert (exists ( (x_39 Int) ) (exists ( (x_40 (P (C Int Int))) ) (and (forall ( (x_41 Int) (x_42 Int) ) (= (mem2 x_42 x_41 x_40) (mem2 x_42 x_41 g_empty_seq_8))) (forall ( (x_43 Int) (x_44 Int) (x_45 Int) ) (=> (and  (mem2 x_43 x_44 x_40) (mem2 x_43 x_45 x_40)) (= x_44 x_45))) (forall ( (x_46 Int) ) (= (and (>= x_46 1) (<= x_46 x_39)) (exists ( (x_47 Int) ) (mem2 x_46 x_47 x_40)))) (forall ( (x_48 Int) ) (=> (exists ( (x_49 Int) ) (mem2 x_49 x_48 x_40)) true))))))
(assert (forall ( (x_50 Int) (x_51 Int) ) (= (mem2 x_51 x_50 g_empty_seq_8) false)))
; Global hypotheses
(assert (forall ((x_580 (P Int)) ) (=> (forall ( (x_581 Int) ) (= (mem0 x_581 x_580) (exists ( (x_582 Int) ) (and  (mem0 x_582 g_S1_0) (= x_581 x_582))))) (>= (isum x_580) 0))))
(assert (forall ((x_583 (P Int)) ) (=> (forall ( (x_584 Int) ) (= (mem0 x_584 x_583) (exists ( (x_585 Int) ) (and  (mem0 x_585 g_S2_1) (= x_584 x_585))))) (>= (isum x_583) 1))))
(assert (forall ((x_586 (P Int)) ) (=> (forall ( (x_587 Int) ) (= (mem0 x_587 x_586) (exists ( (x_588 Int) ) (and  (mem0 x_588 g_S3_2) (= x_587 x_588))))) (>= (isum x_586) 6))))
(assert (forall ((x_589 (P Int)) ) (=> (forall ( (x_590 Int) ) (= (mem0 x_590 x_589) (exists ( (x_591 Int) ) (and  (mem0 x_591 g_S1_0) (= x_590 x_591))))) (>= (iprod x_589) 1))))
(assert (forall ((x_592 (P Int)) ) (=> (forall ( (x_593 Int) ) (= (mem0 x_593 x_592) (exists ( (x_594 Int) ) (and  (mem0 x_594 g_S2_1) (= x_593 x_594))))) (>= (iprod x_592) 1))))
(assert (forall ((x_595 (P Int)) ) (=> (forall ( (x_596 Int) ) (= (mem0 x_596 x_595) (exists ( (x_597 Int) ) (and  (mem0 x_597 g_S3_2) (= x_596 x_597))))) (>= (iprod x_595) 6))))
(assert (forall ((x_598 Int) ) (=> (exists ( (x_599 (P (C Int Int))) ) (and (and (exists ( (x_600 (P (C Int Int))) ) (and (forall ( (x_601 Int) (x_602 Int) ) (= (mem2 x_602 x_601 x_600) (mem2 x_602 x_601 x_599))) (forall ( (x_603 Int) (x_604 Int) (x_605 Int) ) (=> (and  (mem2 x_603 x_604 x_600) (mem2 x_603 x_605 x_600)) (= x_604 x_605))) (forall ( (x_606 Int) ) (= (mem0 x_606 g_S1_0) (exists ( (x_607 Int) ) (mem2 x_606 x_607 x_600)))) (forall ( (x_608 Int) ) (=> (exists ( (x_609 Int) ) (mem2 x_609 x_608 x_600)) (and (>= x_608 1) (<= x_608 x_598)))))) (forall ( (x_610 Int) ) (=> (and (>= x_610 1) (<= x_610 x_598)) (exists ( (x_611 Int) ) (mem2 x_611 x_610 x_599))))) (forall ( (x_612 Int) (x_613 Int) (x_614 Int) ) (=> (and  (mem2 x_613 x_612 x_599) (mem2 x_614 x_612 x_599)) (= x_613 x_614))))) (>= x_598 0))))
(assert (forall ((x_615 Int) ) (=> (exists ( (x_616 (P (C Int Int))) ) (and (and (exists ( (x_617 (P (C Int Int))) ) (and (forall ( (x_618 Int) (x_619 Int) ) (= (mem2 x_619 x_618 x_617) (mem2 x_619 x_618 x_616))) (forall ( (x_620 Int) (x_621 Int) (x_622 Int) ) (=> (and  (mem2 x_620 x_621 x_617) (mem2 x_620 x_622 x_617)) (= x_621 x_622))) (forall ( (x_623 Int) ) (= (mem0 x_623 g_S2_1) (exists ( (x_624 Int) ) (mem2 x_623 x_624 x_617)))) (forall ( (x_625 Int) ) (=> (exists ( (x_626 Int) ) (mem2 x_626 x_625 x_617)) (and (>= x_625 1) (<= x_625 x_615)))))) (forall ( (x_627 Int) ) (=> (and (>= x_627 1) (<= x_627 x_615)) (exists ( (x_628 Int) ) (mem2 x_628 x_627 x_616))))) (forall ( (x_629 Int) (x_630 Int) (x_631 Int) ) (=> (and  (mem2 x_630 x_629 x_616) (mem2 x_631 x_629 x_616)) (= x_630 x_631))))) (>= x_615 1))))
(assert (forall ((x_632 Int) ) (=> (exists ( (x_633 (P (C Int Int))) ) (and (and (exists ( (x_634 (P (C Int Int))) ) (and (forall ( (x_635 Int) (x_636 Int) ) (= (mem2 x_636 x_635 x_634) (mem2 x_636 x_635 x_633))) (forall ( (x_637 Int) (x_638 Int) (x_639 Int) ) (=> (and  (mem2 x_637 x_638 x_634) (mem2 x_637 x_639 x_634)) (= x_638 x_639))) (forall ( (x_640 Int) ) (= (mem0 x_640 g_S3_2) (exists ( (x_641 Int) ) (mem2 x_640 x_641 x_634)))) (forall ( (x_642 Int) ) (=> (exists ( (x_643 Int) ) (mem2 x_643 x_642 x_634)) (and (>= x_642 1) (<= x_642 x_632)))))) (forall ( (x_644 Int) ) (=> (and (>= x_644 1) (<= x_644 x_632)) (exists ( (x_645 Int) ) (mem2 x_645 x_644 x_633))))) (forall ( (x_646 Int) (x_647 Int) (x_648 Int) ) (=> (and  (mem2 x_647 x_646 x_633) (mem2 x_648 x_646 x_633)) (= x_647 x_648))))) (>= x_632 3))))
(assert (forall ((x_649 Int) ) (=> (exists ( (x_650 (P (C Int Int))) ) (and (and (exists ( (x_651 (P (C Int Int))) ) (and (forall ( (x_652 Int) (x_653 Int) ) (= (mem2 x_653 x_652 x_651) (mem2 x_653 x_652 x_650))) (forall ( (x_654 Int) (x_655 Int) (x_656 Int) ) (=> (and  (mem2 x_654 x_655 x_651) (mem2 x_654 x_656 x_651)) (= x_655 x_656))) (forall ( (x_657 Int) ) (= (mem0 x_657 g_S1_0) (exists ( (x_658 Int) ) (mem2 x_657 x_658 x_651)))) (forall ( (x_659 Int) ) (=> (exists ( (x_660 Int) ) (mem2 x_660 x_659 x_651)) (and (>= x_659 1) (<= x_659 x_649)))))) (forall ( (x_661 Int) ) (=> (and (>= x_661 1) (<= x_661 x_649)) (exists ( (x_662 Int) ) (mem2 x_662 x_661 x_650))))) (forall ( (x_663 Int) (x_664 Int) (x_665 Int) ) (=> (and  (mem2 x_664 x_663 x_650) (mem2 x_665 x_663 x_650)) (= x_664 x_665))))) (>= 0 x_649))))
(assert (forall ((x_666 Int) ) (=> (exists ( (x_667 (P (C Int Int))) ) (and (and (exists ( (x_668 (P (C Int Int))) ) (and (forall ( (x_669 Int) (x_670 Int) ) (= (mem2 x_670 x_669 x_668) (mem2 x_670 x_669 x_667))) (forall ( (x_671 Int) (x_672 Int) (x_673 Int) ) (=> (and  (mem2 x_671 x_672 x_668) (mem2 x_671 x_673 x_668)) (= x_672 x_673))) (forall ( (x_674 Int) ) (= (mem0 x_674 g_S2_1) (exists ( (x_675 Int) ) (mem2 x_674 x_675 x_668)))) (forall ( (x_676 Int) ) (=> (exists ( (x_677 Int) ) (mem2 x_677 x_676 x_668)) (and (>= x_676 1) (<= x_676 x_666)))))) (forall ( (x_678 Int) ) (=> (and (>= x_678 1) (<= x_678 x_666)) (exists ( (x_679 Int) ) (mem2 x_679 x_678 x_667))))) (forall ( (x_680 Int) (x_681 Int) (x_682 Int) ) (=> (and  (mem2 x_681 x_680 x_667) (mem2 x_682 x_680 x_667)) (= x_681 x_682))))) (>= 1 x_666))))
(assert (forall ((x_683 Int) ) (=> (exists ( (x_684 (P (C Int Int))) ) (and (and (exists ( (x_685 (P (C Int Int))) ) (and (forall ( (x_686 Int) (x_687 Int) ) (= (mem2 x_687 x_686 x_685) (mem2 x_687 x_686 x_684))) (forall ( (x_688 Int) (x_689 Int) (x_690 Int) ) (=> (and  (mem2 x_688 x_689 x_685) (mem2 x_688 x_690 x_685)) (= x_689 x_690))) (forall ( (x_691 Int) ) (= (mem0 x_691 g_S3_2) (exists ( (x_692 Int) ) (mem2 x_691 x_692 x_685)))) (forall ( (x_693 Int) ) (=> (exists ( (x_694 Int) ) (mem2 x_694 x_693 x_685)) (and (>= x_693 1) (<= x_693 x_683)))))) (forall ( (x_695 Int) ) (=> (and (>= x_695 1) (<= x_695 x_683)) (exists ( (x_696 Int) ) (mem2 x_696 x_695 x_684))))) (forall ( (x_697 Int) (x_698 Int) (x_699 Int) ) (=> (and  (mem2 x_698 x_697 x_684) (mem2 x_699 x_697 x_684)) (= x_698 x_699))))) (>= 3 x_683))))
; Local hypotheses
; Goal
(assert (not (forall ((x_700 Int)(x_701 Int) ) (=> (and (exists ( (x_702 (P (C Int Int))) ) (and (and (exists ( (x_703 (P (C Int Int))) ) (and (forall ( (x_704 Int) (x_705 Int) ) (= (mem2 x_705 x_704 x_703) (mem2 x_705 x_704 x_702))) (forall ( (x_706 Int) (x_707 Int) (x_708 Int) ) (=> (and  (mem2 x_706 x_707 x_703) (mem2 x_706 x_708 x_703)) (= x_707 x_708))) (forall ( (x_709 Int) ) (= (mem0 x_709 g_S1_0) (exists ( (x_710 Int) ) (mem2 x_709 x_710 x_703)))) (forall ( (x_711 Int) ) (=> (exists ( (x_712 Int) ) (mem2 x_712 x_711 x_703)) (and (>= x_711 1) (<= x_711 x_700)))))) (forall ( (x_713 Int) ) (=> (and (>= x_713 1) (<= x_713 x_700)) (exists ( (x_714 Int) ) (mem2 x_714 x_713 x_702))))) (forall ( (x_715 Int) (x_716 Int) (x_717 Int) ) (=> (and  (mem2 x_716 x_715 x_702) (mem2 x_717 x_715 x_702)) (= x_716 x_717))))) (exists ( (x_718 (P (C Int Int))) ) (and (and (exists ( (x_719 (P (C Int Int))) ) (and (forall ( (x_720 Int) (x_721 Int) ) (= (mem2 x_721 x_720 x_719) (mem2 x_721 x_720 x_718))) (forall ( (x_722 Int) (x_723 Int) (x_724 Int) ) (=> (and  (mem2 x_722 x_723 x_719) (mem2 x_722 x_724 x_719)) (= x_723 x_724))) (forall ( (x_725 Int) ) (= (mem0 x_725 g_S2_1) (exists ( (x_726 Int) ) (mem2 x_725 x_726 x_719)))) (forall ( (x_727 Int) ) (=> (exists ( (x_728 Int) ) (mem2 x_728 x_727 x_719)) (and (>= x_727 1) (<= x_727 x_701)))))) (forall ( (x_729 Int) ) (=> (and (>= x_729 1) (<= x_729 x_701)) (exists ( (x_730 Int) ) (mem2 x_730 x_729 x_718))))) (forall ( (x_731 Int) (x_732 Int) (x_733 Int) ) (=> (and  (mem2 x_732 x_731 x_718) (mem2 x_733 x_731 x_718)) (= x_732 x_733)))))) (>= x_700 x_701)))))
(check-sat)
(exit)
