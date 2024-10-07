(set-option :print-success false)
(set-logic ALL)
; PO 29 0
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
(assert (forall ((x_3531 (P Int)) ) (=> (forall ( (x_3532 Int) ) (= (mem0 x_3532 x_3531) (exists ( (x_3533 Int) ) (and  (mem0 x_3533 g_S1_0) (= x_3532 x_3533))))) (>= (isum x_3531) 0))))
(assert (forall ((x_3534 (P Int)) ) (=> (forall ( (x_3535 Int) ) (= (mem0 x_3535 x_3534) (exists ( (x_3536 Int) ) (and  (mem0 x_3536 g_S2_1) (= x_3535 x_3536))))) (>= (isum x_3534) 1))))
(assert (forall ((x_3537 (P Int)) ) (=> (forall ( (x_3538 Int) ) (= (mem0 x_3538 x_3537) (exists ( (x_3539 Int) ) (and  (mem0 x_3539 g_S3_2) (= x_3538 x_3539))))) (>= (isum x_3537) 6))))
(assert (forall ((x_3540 (P Int)) ) (=> (forall ( (x_3541 Int) ) (= (mem0 x_3541 x_3540) (exists ( (x_3542 Int) ) (and  (mem0 x_3542 g_S1_0) (= x_3541 x_3542))))) (>= (iprod x_3540) 1))))
(assert (forall ((x_3543 (P Int)) ) (=> (forall ( (x_3544 Int) ) (= (mem0 x_3544 x_3543) (exists ( (x_3545 Int) ) (and  (mem0 x_3545 g_S2_1) (= x_3544 x_3545))))) (>= (iprod x_3543) 1))))
(assert (forall ((x_3546 (P Int)) ) (=> (forall ( (x_3547 Int) ) (= (mem0 x_3547 x_3546) (exists ( (x_3548 Int) ) (and  (mem0 x_3548 g_S3_2) (= x_3547 x_3548))))) (>= (iprod x_3546) 6))))
(assert (forall ((x_3549 Int) ) (=> (exists ( (x_3550 (P (C Int Int))) ) (and (and (exists ( (x_3551 (P (C Int Int))) ) (and (forall ( (x_3552 Int) (x_3553 Int) ) (= (mem2 x_3553 x_3552 x_3551) (mem2 x_3553 x_3552 x_3550))) (forall ( (x_3554 Int) (x_3555 Int) (x_3556 Int) ) (=> (and  (mem2 x_3554 x_3555 x_3551) (mem2 x_3554 x_3556 x_3551)) (= x_3555 x_3556))) (forall ( (x_3557 Int) ) (= (mem0 x_3557 g_S1_0) (exists ( (x_3558 Int) ) (mem2 x_3557 x_3558 x_3551)))) (forall ( (x_3559 Int) ) (=> (exists ( (x_3560 Int) ) (mem2 x_3560 x_3559 x_3551)) (and (>= x_3559 1) (<= x_3559 x_3549)))))) (forall ( (x_3561 Int) ) (=> (and (>= x_3561 1) (<= x_3561 x_3549)) (exists ( (x_3562 Int) ) (mem2 x_3562 x_3561 x_3550))))) (forall ( (x_3563 Int) (x_3564 Int) (x_3565 Int) ) (=> (and  (mem2 x_3564 x_3563 x_3550) (mem2 x_3565 x_3563 x_3550)) (= x_3564 x_3565))))) (>= x_3549 0))))
(assert (forall ((x_3566 Int) ) (=> (exists ( (x_3567 (P (C Int Int))) ) (and (and (exists ( (x_3568 (P (C Int Int))) ) (and (forall ( (x_3569 Int) (x_3570 Int) ) (= (mem2 x_3570 x_3569 x_3568) (mem2 x_3570 x_3569 x_3567))) (forall ( (x_3571 Int) (x_3572 Int) (x_3573 Int) ) (=> (and  (mem2 x_3571 x_3572 x_3568) (mem2 x_3571 x_3573 x_3568)) (= x_3572 x_3573))) (forall ( (x_3574 Int) ) (= (mem0 x_3574 g_S2_1) (exists ( (x_3575 Int) ) (mem2 x_3574 x_3575 x_3568)))) (forall ( (x_3576 Int) ) (=> (exists ( (x_3577 Int) ) (mem2 x_3577 x_3576 x_3568)) (and (>= x_3576 1) (<= x_3576 x_3566)))))) (forall ( (x_3578 Int) ) (=> (and (>= x_3578 1) (<= x_3578 x_3566)) (exists ( (x_3579 Int) ) (mem2 x_3579 x_3578 x_3567))))) (forall ( (x_3580 Int) (x_3581 Int) (x_3582 Int) ) (=> (and  (mem2 x_3581 x_3580 x_3567) (mem2 x_3582 x_3580 x_3567)) (= x_3581 x_3582))))) (>= x_3566 1))))
(assert (forall ((x_3583 Int) ) (=> (exists ( (x_3584 (P (C Int Int))) ) (and (and (exists ( (x_3585 (P (C Int Int))) ) (and (forall ( (x_3586 Int) (x_3587 Int) ) (= (mem2 x_3587 x_3586 x_3585) (mem2 x_3587 x_3586 x_3584))) (forall ( (x_3588 Int) (x_3589 Int) (x_3590 Int) ) (=> (and  (mem2 x_3588 x_3589 x_3585) (mem2 x_3588 x_3590 x_3585)) (= x_3589 x_3590))) (forall ( (x_3591 Int) ) (= (mem0 x_3591 g_S3_2) (exists ( (x_3592 Int) ) (mem2 x_3591 x_3592 x_3585)))) (forall ( (x_3593 Int) ) (=> (exists ( (x_3594 Int) ) (mem2 x_3594 x_3593 x_3585)) (and (>= x_3593 1) (<= x_3593 x_3583)))))) (forall ( (x_3595 Int) ) (=> (and (>= x_3595 1) (<= x_3595 x_3583)) (exists ( (x_3596 Int) ) (mem2 x_3596 x_3595 x_3584))))) (forall ( (x_3597 Int) (x_3598 Int) (x_3599 Int) ) (=> (and  (mem2 x_3598 x_3597 x_3584) (mem2 x_3599 x_3597 x_3584)) (= x_3598 x_3599))))) (>= x_3583 3))))
(assert (forall ((x_3600 Int) ) (=> (exists ( (x_3601 (P (C Int Int))) ) (and (and (exists ( (x_3602 (P (C Int Int))) ) (and (forall ( (x_3603 Int) (x_3604 Int) ) (= (mem2 x_3604 x_3603 x_3602) (mem2 x_3604 x_3603 x_3601))) (forall ( (x_3605 Int) (x_3606 Int) (x_3607 Int) ) (=> (and  (mem2 x_3605 x_3606 x_3602) (mem2 x_3605 x_3607 x_3602)) (= x_3606 x_3607))) (forall ( (x_3608 Int) ) (= (mem0 x_3608 g_S1_0) (exists ( (x_3609 Int) ) (mem2 x_3608 x_3609 x_3602)))) (forall ( (x_3610 Int) ) (=> (exists ( (x_3611 Int) ) (mem2 x_3611 x_3610 x_3602)) (and (>= x_3610 1) (<= x_3610 x_3600)))))) (forall ( (x_3612 Int) ) (=> (and (>= x_3612 1) (<= x_3612 x_3600)) (exists ( (x_3613 Int) ) (mem2 x_3613 x_3612 x_3601))))) (forall ( (x_3614 Int) (x_3615 Int) (x_3616 Int) ) (=> (and  (mem2 x_3615 x_3614 x_3601) (mem2 x_3616 x_3614 x_3601)) (= x_3615 x_3616))))) (>= 0 x_3600))))
(assert (forall ((x_3617 Int) ) (=> (exists ( (x_3618 (P (C Int Int))) ) (and (and (exists ( (x_3619 (P (C Int Int))) ) (and (forall ( (x_3620 Int) (x_3621 Int) ) (= (mem2 x_3621 x_3620 x_3619) (mem2 x_3621 x_3620 x_3618))) (forall ( (x_3622 Int) (x_3623 Int) (x_3624 Int) ) (=> (and  (mem2 x_3622 x_3623 x_3619) (mem2 x_3622 x_3624 x_3619)) (= x_3623 x_3624))) (forall ( (x_3625 Int) ) (= (mem0 x_3625 g_S2_1) (exists ( (x_3626 Int) ) (mem2 x_3625 x_3626 x_3619)))) (forall ( (x_3627 Int) ) (=> (exists ( (x_3628 Int) ) (mem2 x_3628 x_3627 x_3619)) (and (>= x_3627 1) (<= x_3627 x_3617)))))) (forall ( (x_3629 Int) ) (=> (and (>= x_3629 1) (<= x_3629 x_3617)) (exists ( (x_3630 Int) ) (mem2 x_3630 x_3629 x_3618))))) (forall ( (x_3631 Int) (x_3632 Int) (x_3633 Int) ) (=> (and  (mem2 x_3632 x_3631 x_3618) (mem2 x_3633 x_3631 x_3618)) (= x_3632 x_3633))))) (>= 1 x_3617))))
(assert (forall ((x_3634 Int) ) (=> (exists ( (x_3635 (P (C Int Int))) ) (and (and (exists ( (x_3636 (P (C Int Int))) ) (and (forall ( (x_3637 Int) (x_3638 Int) ) (= (mem2 x_3638 x_3637 x_3636) (mem2 x_3638 x_3637 x_3635))) (forall ( (x_3639 Int) (x_3640 Int) (x_3641 Int) ) (=> (and  (mem2 x_3639 x_3640 x_3636) (mem2 x_3639 x_3641 x_3636)) (= x_3640 x_3641))) (forall ( (x_3642 Int) ) (= (mem0 x_3642 g_S3_2) (exists ( (x_3643 Int) ) (mem2 x_3642 x_3643 x_3636)))) (forall ( (x_3644 Int) ) (=> (exists ( (x_3645 Int) ) (mem2 x_3645 x_3644 x_3636)) (and (>= x_3644 1) (<= x_3644 x_3634)))))) (forall ( (x_3646 Int) ) (=> (and (>= x_3646 1) (<= x_3646 x_3634)) (exists ( (x_3647 Int) ) (mem2 x_3647 x_3646 x_3635))))) (forall ( (x_3648 Int) (x_3649 Int) (x_3650 Int) ) (=> (and  (mem2 x_3649 x_3648 x_3635) (mem2 x_3650 x_3648 x_3635)) (= x_3649 x_3650))))) (>= 3 x_3634))))
(assert (forall ((x_3651 Int)(x_3652 Int) ) (=> (and (exists ( (x_3653 (P (C Int Int))) ) (and (and (exists ( (x_3654 (P (C Int Int))) ) (and (forall ( (x_3655 Int) (x_3656 Int) ) (= (mem2 x_3656 x_3655 x_3654) (mem2 x_3656 x_3655 x_3653))) (forall ( (x_3657 Int) (x_3658 Int) (x_3659 Int) ) (=> (and  (mem2 x_3657 x_3658 x_3654) (mem2 x_3657 x_3659 x_3654)) (= x_3658 x_3659))) (forall ( (x_3660 Int) ) (= (mem0 x_3660 g_S1_0) (exists ( (x_3661 Int) ) (mem2 x_3660 x_3661 x_3654)))) (forall ( (x_3662 Int) ) (=> (exists ( (x_3663 Int) ) (mem2 x_3663 x_3662 x_3654)) (and (>= x_3662 1) (<= x_3662 x_3651)))))) (forall ( (x_3664 Int) ) (=> (and (>= x_3664 1) (<= x_3664 x_3651)) (exists ( (x_3665 Int) ) (mem2 x_3665 x_3664 x_3653))))) (forall ( (x_3666 Int) (x_3667 Int) (x_3668 Int) ) (=> (and  (mem2 x_3667 x_3666 x_3653) (mem2 x_3668 x_3666 x_3653)) (= x_3667 x_3668))))) (exists ( (x_3669 (P (C Int Int))) ) (and (and (exists ( (x_3670 (P (C Int Int))) ) (and (forall ( (x_3671 Int) (x_3672 Int) ) (= (mem2 x_3672 x_3671 x_3670) (mem2 x_3672 x_3671 x_3669))) (forall ( (x_3673 Int) (x_3674 Int) (x_3675 Int) ) (=> (and  (mem2 x_3673 x_3674 x_3670) (mem2 x_3673 x_3675 x_3670)) (= x_3674 x_3675))) (forall ( (x_3676 Int) ) (= (mem0 x_3676 g_S2_1) (exists ( (x_3677 Int) ) (mem2 x_3676 x_3677 x_3670)))) (forall ( (x_3678 Int) ) (=> (exists ( (x_3679 Int) ) (mem2 x_3679 x_3678 x_3670)) (and (>= x_3678 1) (<= x_3678 x_3652)))))) (forall ( (x_3680 Int) ) (=> (and (>= x_3680 1) (<= x_3680 x_3652)) (exists ( (x_3681 Int) ) (mem2 x_3681 x_3680 x_3669))))) (forall ( (x_3682 Int) (x_3683 Int) (x_3684 Int) ) (=> (and  (mem2 x_3683 x_3682 x_3669) (mem2 x_3684 x_3682 x_3669)) (= x_3683 x_3684)))))) (>= x_3651 x_3652))))
(assert (forall ((x_3685 Int) ) (=> (and  (mem0 x_3685 g_S2_1) (forall ( (x_3686 Int) ) (=> (mem0 x_3686 g_S2_1) (<= x_3685 x_3686)))) (>= x_3685 3))))
(assert (forall ((x_3687 Int) ) (=> (and  (mem0 x_3687 g_S2_1) (forall ( (x_3688 Int) ) (=> (mem0 x_3688 g_S2_1) (>= x_3687 x_3688)))) (>= x_3687 1))))
(assert (forall ((x_3689 Int) ) (=> (and  (mem0 x_3689 g_S2_1) (forall ( (x_3690 Int) ) (=> (mem0 x_3690 g_S2_1) (<= x_3689 x_3690)))) (>= 1 x_3689))))
(assert (forall ((x_3691 Int) ) (=> (and  (mem0 x_3691 g_S2_1) (forall ( (x_3692 Int) ) (=> (mem0 x_3692 g_S2_1) (>= x_3691 x_3692)))) (>= 3 x_3691))))
(assert (forall ((x_3693 Int)(x_3694 Int) ) (=> (and (and  (mem0 x_3693 g_S1_0) (forall ( (x_3695 Int) ) (=> (mem0 x_3695 g_S1_0) (>= x_3693 x_3695)))) (and  (mem0 x_3694 g_S1_0) (forall ( (x_3696 Int) ) (=> (mem0 x_3696 g_S1_0) (<= x_3694 x_3696))))) (>= x_3693 x_3694))))
(assert (forall ((x_3697 Int) ) (=> (forall ((x_3698 Int) ) (=> (= x_3698 2) (mem2 x_3698 x_3697 g_rel1_3))) (>= x_3697 7))))
(assert (forall ((x_3699 Int) ) (=> (forall ((x_3700 Int) ) (=> (= x_3700 2) (mem2 x_3700 x_3699 g_rel1_3))) (>= 7 x_3699))))
(assert (forall ((x_3701 Int) ) (=> (forall ((x_3702 Int) ) (=> (= x_3702 1) (mem2 x_3702 x_3701 g_fun1_4))) (>= x_3701 3))))
(assert (forall ((x_3703 Int) ) (=> (forall ((x_3704 Int) ) (=> (= x_3704 1) (mem2 x_3704 x_3703 g_fun1_4))) (>= 3 x_3703))))
(assert (forall ((x_3705 Int)(x_3706 Int) ) (=> (and (forall ((x_3707 Int) ) (=> (= x_3707 1) (mem2 x_3707 x_3705 g_fun2_5))) (forall ((x_3708 Int) ) (=> (= x_3708 1) (mem2 x_3708 x_3706 g_fun3_6)))) (>= x_3705 x_3706))))
(assert (forall ((x_3709 Int) ) (=> (forall ((x_3710 Int) ) (=> (= x_3710 1) (mem2 x_3710 x_3709 g_ss_7))) (>= x_3709 7))))
(assert (forall ((x_3711 Int) ) (=> (forall ((x_3712 Int) ) (=> (= x_3712 1) (mem2 x_3712 x_3711 g_ss_7))) (>= 7 x_3711))))
(assert (forall ((x_3713 Int) ) (=> (forall ((x_3714 Int) ) (=> (forall ( (x_3715 Int) ) (= (exists ( (x_3716 Int) ) (mem2 x_3715 x_3716 g_ss_7)) (and (>= x_3715 1) (<= x_3715 x_3714)))) (mem2 x_3714 x_3713 g_ss_7))) (>= x_3713 21))))
(assert (forall ((x_3717 Int) ) (=> (forall ((x_3718 Int) ) (=> (forall ( (x_3719 Int) ) (= (exists ( (x_3720 Int) ) (mem2 x_3719 x_3720 g_ss_7)) (and (>= x_3719 1) (<= x_3719 x_3718)))) (mem2 x_3718 x_3717 g_ss_7))) (>= 21 x_3717))))
(assert (forall ((x_3721 Int)(x_3722 Int) ) (=> (and (forall ((x_3723 Int) ) (=> (= x_3723 1) (mem2 x_3723 x_3721 g_ss_7))) (forall ((x_3724 Int) ) (=> (forall ( (x_3725 Int) ) (= (exists ( (x_3726 Int) ) (mem2 x_3725 x_3726 g_ss_7)) (and (>= x_3725 1) (<= x_3725 x_3724)))) (mem2 x_3724 x_3722 g_ss_7)))) (>= x_3721 x_3722))))
(assert (forall ((x_3727 Int) ) (=> (forall ( (x_3728 Int) ) (= (exists ( (x_3729 Int) ) (mem2 x_3728 x_3729 g_ss_7)) (and (>= x_3728 1) (<= x_3728 x_3727)))) (>= x_3727 4))))
; Local hypotheses
; Goal
(assert (not (forall ((x_3730 Int) ) (=> (forall ( (x_3731 Int) ) (= (exists ( (x_3732 Int) ) (mem2 x_3731 x_3732 g_ss_7)) (and (>= x_3731 1) (<= x_3731 x_3730)))) (>= 4 x_3730)))))
(check-sat)
(exit)
