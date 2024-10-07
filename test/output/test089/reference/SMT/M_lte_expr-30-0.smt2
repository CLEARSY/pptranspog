(set-option :print-success false)
(set-logic ALL)
; PO 30 0
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
(assert (forall ((x_3733 (P Int)) ) (=> (forall ( (x_3734 Int) ) (= (mem0 x_3734 x_3733) (exists ( (x_3735 Int) ) (and  (mem0 x_3735 g_S1_0) (= x_3734 x_3735))))) (<= (isum x_3733) 0))))
(assert (forall ((x_3736 (P Int)) ) (=> (forall ( (x_3737 Int) ) (= (mem0 x_3737 x_3736) (exists ( (x_3738 Int) ) (and  (mem0 x_3738 g_S2_1) (= x_3737 x_3738))))) (<= (isum x_3736) 1))))
(assert (forall ((x_3739 (P Int)) ) (=> (forall ( (x_3740 Int) ) (= (mem0 x_3740 x_3739) (exists ( (x_3741 Int) ) (and  (mem0 x_3741 g_S3_2) (= x_3740 x_3741))))) (<= (isum x_3739) 6))))
(assert (forall ((x_3742 (P Int)) ) (=> (forall ( (x_3743 Int) ) (= (mem0 x_3743 x_3742) (exists ( (x_3744 Int) ) (and  (mem0 x_3744 g_S1_0) (= x_3743 x_3744))))) (<= (iprod x_3742) 1))))
(assert (forall ((x_3745 (P Int)) ) (=> (forall ( (x_3746 Int) ) (= (mem0 x_3746 x_3745) (exists ( (x_3747 Int) ) (and  (mem0 x_3747 g_S2_1) (= x_3746 x_3747))))) (<= (iprod x_3745) 1))))
(assert (forall ((x_3748 (P Int)) ) (=> (forall ( (x_3749 Int) ) (= (mem0 x_3749 x_3748) (exists ( (x_3750 Int) ) (and  (mem0 x_3750 g_S3_2) (= x_3749 x_3750))))) (<= (iprod x_3748) 6))))
(assert (forall ((x_3751 Int) ) (=> (exists ( (x_3752 (P (C Int Int))) ) (and (and (exists ( (x_3753 (P (C Int Int))) ) (and (forall ( (x_3754 Int) (x_3755 Int) ) (= (mem2 x_3755 x_3754 x_3753) (mem2 x_3755 x_3754 x_3752))) (forall ( (x_3756 Int) (x_3757 Int) (x_3758 Int) ) (=> (and  (mem2 x_3756 x_3757 x_3753) (mem2 x_3756 x_3758 x_3753)) (= x_3757 x_3758))) (forall ( (x_3759 Int) ) (= (mem0 x_3759 g_S1_0) (exists ( (x_3760 Int) ) (mem2 x_3759 x_3760 x_3753)))) (forall ( (x_3761 Int) ) (=> (exists ( (x_3762 Int) ) (mem2 x_3762 x_3761 x_3753)) (and (>= x_3761 1) (<= x_3761 x_3751)))))) (forall ( (x_3763 Int) ) (=> (and (>= x_3763 1) (<= x_3763 x_3751)) (exists ( (x_3764 Int) ) (mem2 x_3764 x_3763 x_3752))))) (forall ( (x_3765 Int) (x_3766 Int) (x_3767 Int) ) (=> (and  (mem2 x_3766 x_3765 x_3752) (mem2 x_3767 x_3765 x_3752)) (= x_3766 x_3767))))) (<= x_3751 0))))
(assert (forall ((x_3768 Int) ) (=> (exists ( (x_3769 (P (C Int Int))) ) (and (and (exists ( (x_3770 (P (C Int Int))) ) (and (forall ( (x_3771 Int) (x_3772 Int) ) (= (mem2 x_3772 x_3771 x_3770) (mem2 x_3772 x_3771 x_3769))) (forall ( (x_3773 Int) (x_3774 Int) (x_3775 Int) ) (=> (and  (mem2 x_3773 x_3774 x_3770) (mem2 x_3773 x_3775 x_3770)) (= x_3774 x_3775))) (forall ( (x_3776 Int) ) (= (mem0 x_3776 g_S2_1) (exists ( (x_3777 Int) ) (mem2 x_3776 x_3777 x_3770)))) (forall ( (x_3778 Int) ) (=> (exists ( (x_3779 Int) ) (mem2 x_3779 x_3778 x_3770)) (and (>= x_3778 1) (<= x_3778 x_3768)))))) (forall ( (x_3780 Int) ) (=> (and (>= x_3780 1) (<= x_3780 x_3768)) (exists ( (x_3781 Int) ) (mem2 x_3781 x_3780 x_3769))))) (forall ( (x_3782 Int) (x_3783 Int) (x_3784 Int) ) (=> (and  (mem2 x_3783 x_3782 x_3769) (mem2 x_3784 x_3782 x_3769)) (= x_3783 x_3784))))) (<= x_3768 1))))
(assert (forall ((x_3785 Int) ) (=> (exists ( (x_3786 (P (C Int Int))) ) (and (and (exists ( (x_3787 (P (C Int Int))) ) (and (forall ( (x_3788 Int) (x_3789 Int) ) (= (mem2 x_3789 x_3788 x_3787) (mem2 x_3789 x_3788 x_3786))) (forall ( (x_3790 Int) (x_3791 Int) (x_3792 Int) ) (=> (and  (mem2 x_3790 x_3791 x_3787) (mem2 x_3790 x_3792 x_3787)) (= x_3791 x_3792))) (forall ( (x_3793 Int) ) (= (mem0 x_3793 g_S3_2) (exists ( (x_3794 Int) ) (mem2 x_3793 x_3794 x_3787)))) (forall ( (x_3795 Int) ) (=> (exists ( (x_3796 Int) ) (mem2 x_3796 x_3795 x_3787)) (and (>= x_3795 1) (<= x_3795 x_3785)))))) (forall ( (x_3797 Int) ) (=> (and (>= x_3797 1) (<= x_3797 x_3785)) (exists ( (x_3798 Int) ) (mem2 x_3798 x_3797 x_3786))))) (forall ( (x_3799 Int) (x_3800 Int) (x_3801 Int) ) (=> (and  (mem2 x_3800 x_3799 x_3786) (mem2 x_3801 x_3799 x_3786)) (= x_3800 x_3801))))) (<= x_3785 3))))
(assert (forall ((x_3802 Int) ) (=> (exists ( (x_3803 (P (C Int Int))) ) (and (and (exists ( (x_3804 (P (C Int Int))) ) (and (forall ( (x_3805 Int) (x_3806 Int) ) (= (mem2 x_3806 x_3805 x_3804) (mem2 x_3806 x_3805 x_3803))) (forall ( (x_3807 Int) (x_3808 Int) (x_3809 Int) ) (=> (and  (mem2 x_3807 x_3808 x_3804) (mem2 x_3807 x_3809 x_3804)) (= x_3808 x_3809))) (forall ( (x_3810 Int) ) (= (mem0 x_3810 g_S1_0) (exists ( (x_3811 Int) ) (mem2 x_3810 x_3811 x_3804)))) (forall ( (x_3812 Int) ) (=> (exists ( (x_3813 Int) ) (mem2 x_3813 x_3812 x_3804)) (and (>= x_3812 1) (<= x_3812 x_3802)))))) (forall ( (x_3814 Int) ) (=> (and (>= x_3814 1) (<= x_3814 x_3802)) (exists ( (x_3815 Int) ) (mem2 x_3815 x_3814 x_3803))))) (forall ( (x_3816 Int) (x_3817 Int) (x_3818 Int) ) (=> (and  (mem2 x_3817 x_3816 x_3803) (mem2 x_3818 x_3816 x_3803)) (= x_3817 x_3818))))) (<= 0 x_3802))))
(assert (forall ((x_3819 Int) ) (=> (exists ( (x_3820 (P (C Int Int))) ) (and (and (exists ( (x_3821 (P (C Int Int))) ) (and (forall ( (x_3822 Int) (x_3823 Int) ) (= (mem2 x_3823 x_3822 x_3821) (mem2 x_3823 x_3822 x_3820))) (forall ( (x_3824 Int) (x_3825 Int) (x_3826 Int) ) (=> (and  (mem2 x_3824 x_3825 x_3821) (mem2 x_3824 x_3826 x_3821)) (= x_3825 x_3826))) (forall ( (x_3827 Int) ) (= (mem0 x_3827 g_S2_1) (exists ( (x_3828 Int) ) (mem2 x_3827 x_3828 x_3821)))) (forall ( (x_3829 Int) ) (=> (exists ( (x_3830 Int) ) (mem2 x_3830 x_3829 x_3821)) (and (>= x_3829 1) (<= x_3829 x_3819)))))) (forall ( (x_3831 Int) ) (=> (and (>= x_3831 1) (<= x_3831 x_3819)) (exists ( (x_3832 Int) ) (mem2 x_3832 x_3831 x_3820))))) (forall ( (x_3833 Int) (x_3834 Int) (x_3835 Int) ) (=> (and  (mem2 x_3834 x_3833 x_3820) (mem2 x_3835 x_3833 x_3820)) (= x_3834 x_3835))))) (<= 1 x_3819))))
(assert (forall ((x_3836 Int) ) (=> (exists ( (x_3837 (P (C Int Int))) ) (and (and (exists ( (x_3838 (P (C Int Int))) ) (and (forall ( (x_3839 Int) (x_3840 Int) ) (= (mem2 x_3840 x_3839 x_3838) (mem2 x_3840 x_3839 x_3837))) (forall ( (x_3841 Int) (x_3842 Int) (x_3843 Int) ) (=> (and  (mem2 x_3841 x_3842 x_3838) (mem2 x_3841 x_3843 x_3838)) (= x_3842 x_3843))) (forall ( (x_3844 Int) ) (= (mem0 x_3844 g_S3_2) (exists ( (x_3845 Int) ) (mem2 x_3844 x_3845 x_3838)))) (forall ( (x_3846 Int) ) (=> (exists ( (x_3847 Int) ) (mem2 x_3847 x_3846 x_3838)) (and (>= x_3846 1) (<= x_3846 x_3836)))))) (forall ( (x_3848 Int) ) (=> (and (>= x_3848 1) (<= x_3848 x_3836)) (exists ( (x_3849 Int) ) (mem2 x_3849 x_3848 x_3837))))) (forall ( (x_3850 Int) (x_3851 Int) (x_3852 Int) ) (=> (and  (mem2 x_3851 x_3850 x_3837) (mem2 x_3852 x_3850 x_3837)) (= x_3851 x_3852))))) (<= 3 x_3836))))
(assert (forall ((x_3853 Int)(x_3854 Int) ) (=> (and (exists ( (x_3855 (P (C Int Int))) ) (and (and (exists ( (x_3856 (P (C Int Int))) ) (and (forall ( (x_3857 Int) (x_3858 Int) ) (= (mem2 x_3858 x_3857 x_3856) (mem2 x_3858 x_3857 x_3855))) (forall ( (x_3859 Int) (x_3860 Int) (x_3861 Int) ) (=> (and  (mem2 x_3859 x_3860 x_3856) (mem2 x_3859 x_3861 x_3856)) (= x_3860 x_3861))) (forall ( (x_3862 Int) ) (= (mem0 x_3862 g_S1_0) (exists ( (x_3863 Int) ) (mem2 x_3862 x_3863 x_3856)))) (forall ( (x_3864 Int) ) (=> (exists ( (x_3865 Int) ) (mem2 x_3865 x_3864 x_3856)) (and (>= x_3864 1) (<= x_3864 x_3853)))))) (forall ( (x_3866 Int) ) (=> (and (>= x_3866 1) (<= x_3866 x_3853)) (exists ( (x_3867 Int) ) (mem2 x_3867 x_3866 x_3855))))) (forall ( (x_3868 Int) (x_3869 Int) (x_3870 Int) ) (=> (and  (mem2 x_3869 x_3868 x_3855) (mem2 x_3870 x_3868 x_3855)) (= x_3869 x_3870))))) (exists ( (x_3871 (P (C Int Int))) ) (and (and (exists ( (x_3872 (P (C Int Int))) ) (and (forall ( (x_3873 Int) (x_3874 Int) ) (= (mem2 x_3874 x_3873 x_3872) (mem2 x_3874 x_3873 x_3871))) (forall ( (x_3875 Int) (x_3876 Int) (x_3877 Int) ) (=> (and  (mem2 x_3875 x_3876 x_3872) (mem2 x_3875 x_3877 x_3872)) (= x_3876 x_3877))) (forall ( (x_3878 Int) ) (= (mem0 x_3878 g_S2_1) (exists ( (x_3879 Int) ) (mem2 x_3878 x_3879 x_3872)))) (forall ( (x_3880 Int) ) (=> (exists ( (x_3881 Int) ) (mem2 x_3881 x_3880 x_3872)) (and (>= x_3880 1) (<= x_3880 x_3854)))))) (forall ( (x_3882 Int) ) (=> (and (>= x_3882 1) (<= x_3882 x_3854)) (exists ( (x_3883 Int) ) (mem2 x_3883 x_3882 x_3871))))) (forall ( (x_3884 Int) (x_3885 Int) (x_3886 Int) ) (=> (and  (mem2 x_3885 x_3884 x_3871) (mem2 x_3886 x_3884 x_3871)) (= x_3885 x_3886)))))) (<= x_3853 x_3854))))
(assert (forall ((x_3887 Int) ) (=> (and  (mem0 x_3887 g_S2_1) (forall ( (x_3888 Int) ) (=> (mem0 x_3888 g_S2_1) (<= x_3887 x_3888)))) (<= x_3887 3))))
(assert (forall ((x_3889 Int) ) (=> (and  (mem0 x_3889 g_S2_1) (forall ( (x_3890 Int) ) (=> (mem0 x_3890 g_S2_1) (>= x_3889 x_3890)))) (<= x_3889 1))))
(assert (forall ((x_3891 Int) ) (=> (and  (mem0 x_3891 g_S2_1) (forall ( (x_3892 Int) ) (=> (mem0 x_3892 g_S2_1) (<= x_3891 x_3892)))) (<= 1 x_3891))))
(assert (forall ((x_3893 Int) ) (=> (and  (mem0 x_3893 g_S2_1) (forall ( (x_3894 Int) ) (=> (mem0 x_3894 g_S2_1) (>= x_3893 x_3894)))) (<= 3 x_3893))))
(assert (forall ((x_3895 Int)(x_3896 Int) ) (=> (and (and  (mem0 x_3895 g_S1_0) (forall ( (x_3897 Int) ) (=> (mem0 x_3897 g_S1_0) (>= x_3895 x_3897)))) (and  (mem0 x_3896 g_S1_0) (forall ( (x_3898 Int) ) (=> (mem0 x_3898 g_S1_0) (<= x_3896 x_3898))))) (<= x_3895 x_3896))))
(assert (forall ((x_3899 Int) ) (=> (forall ((x_3900 Int) ) (=> (= x_3900 2) (mem2 x_3900 x_3899 g_rel1_3))) (<= x_3899 7))))
(assert (forall ((x_3901 Int) ) (=> (forall ((x_3902 Int) ) (=> (= x_3902 2) (mem2 x_3902 x_3901 g_rel1_3))) (<= 7 x_3901))))
(assert (forall ((x_3903 Int) ) (=> (forall ((x_3904 Int) ) (=> (= x_3904 1) (mem2 x_3904 x_3903 g_fun1_4))) (<= x_3903 3))))
(assert (forall ((x_3905 Int) ) (=> (forall ((x_3906 Int) ) (=> (= x_3906 1) (mem2 x_3906 x_3905 g_fun1_4))) (<= 3 x_3905))))
(assert (forall ((x_3907 Int)(x_3908 Int) ) (=> (and (forall ((x_3909 Int) ) (=> (= x_3909 1) (mem2 x_3909 x_3907 g_fun2_5))) (forall ((x_3910 Int) ) (=> (= x_3910 1) (mem2 x_3910 x_3908 g_fun3_6)))) (<= x_3907 x_3908))))
(assert (forall ((x_3911 Int) ) (=> (forall ((x_3912 Int) ) (=> (= x_3912 1) (mem2 x_3912 x_3911 g_ss_7))) (<= x_3911 7))))
(assert (forall ((x_3913 Int) ) (=> (forall ((x_3914 Int) ) (=> (= x_3914 1) (mem2 x_3914 x_3913 g_ss_7))) (<= 7 x_3913))))
(assert (forall ((x_3915 Int) ) (=> (forall ((x_3916 Int) ) (=> (forall ( (x_3917 Int) ) (= (exists ( (x_3918 Int) ) (mem2 x_3917 x_3918 g_ss_7)) (and (>= x_3917 1) (<= x_3917 x_3916)))) (mem2 x_3916 x_3915 g_ss_7))) (<= x_3915 21))))
(assert (forall ((x_3919 Int) ) (=> (forall ((x_3920 Int) ) (=> (forall ( (x_3921 Int) ) (= (exists ( (x_3922 Int) ) (mem2 x_3921 x_3922 g_ss_7)) (and (>= x_3921 1) (<= x_3921 x_3920)))) (mem2 x_3920 x_3919 g_ss_7))) (<= 21 x_3919))))
(assert (forall ((x_3923 Int)(x_3924 Int) ) (=> (and (forall ((x_3925 Int) ) (=> (= x_3925 1) (mem2 x_3925 x_3923 g_ss_7))) (forall ((x_3926 Int) ) (=> (forall ( (x_3927 Int) ) (= (exists ( (x_3928 Int) ) (mem2 x_3927 x_3928 g_ss_7)) (and (>= x_3927 1) (<= x_3927 x_3926)))) (mem2 x_3926 x_3924 g_ss_7)))) (<= x_3923 x_3924))))
(assert (forall ((x_3929 Int) ) (=> (forall ( (x_3930 Int) ) (= (exists ( (x_3931 Int) ) (mem2 x_3930 x_3931 g_ss_7)) (and (>= x_3930 1) (<= x_3930 x_3929)))) (<= x_3929 4))))
(assert (forall ((x_3932 Int) ) (=> (forall ( (x_3933 Int) ) (= (exists ( (x_3934 Int) ) (mem2 x_3933 x_3934 g_ss_7)) (and (>= x_3933 1) (<= x_3933 x_3932)))) (<= 4 x_3932))))
; Local hypotheses
; Goal
(assert (not (forall ((x_3935 Int) ) (=> (forall ( (x_3936 Int) ) (= (exists ( (x_3937 Int) ) (mem2 x_3936 x_3937 g_empty_seq_8)) (and (>= x_3936 1) (<= x_3936 x_3935)))) (<= x_3935 0)))))
(check-sat)
(exit)
