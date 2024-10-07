(set-option :print-success false)
(set-logic ALL)
; PO 13 0
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
(assert (forall ((x_734 (P Int)) ) (=> (forall ( (x_735 Int) ) (= (mem0 x_735 x_734) (exists ( (x_736 Int) ) (and  (mem0 x_736 g_S1_0) (= x_735 x_736))))) (> (isum x_734) 0))))
(assert (forall ((x_737 (P Int)) ) (=> (forall ( (x_738 Int) ) (= (mem0 x_738 x_737) (exists ( (x_739 Int) ) (and  (mem0 x_739 g_S2_1) (= x_738 x_739))))) (> (isum x_737) 1))))
(assert (forall ((x_740 (P Int)) ) (=> (forall ( (x_741 Int) ) (= (mem0 x_741 x_740) (exists ( (x_742 Int) ) (and  (mem0 x_742 g_S3_2) (= x_741 x_742))))) (> (isum x_740) 6))))
(assert (forall ((x_743 (P Int)) ) (=> (forall ( (x_744 Int) ) (= (mem0 x_744 x_743) (exists ( (x_745 Int) ) (and  (mem0 x_745 g_S1_0) (= x_744 x_745))))) (> (iprod x_743) 1))))
(assert (forall ((x_746 (P Int)) ) (=> (forall ( (x_747 Int) ) (= (mem0 x_747 x_746) (exists ( (x_748 Int) ) (and  (mem0 x_748 g_S2_1) (= x_747 x_748))))) (> (iprod x_746) 1))))
(assert (forall ((x_749 (P Int)) ) (=> (forall ( (x_750 Int) ) (= (mem0 x_750 x_749) (exists ( (x_751 Int) ) (and  (mem0 x_751 g_S3_2) (= x_750 x_751))))) (> (iprod x_749) 6))))
(assert (forall ((x_752 Int) ) (=> (exists ( (x_753 (P (C Int Int))) ) (and (and (exists ( (x_754 (P (C Int Int))) ) (and (forall ( (x_755 Int) (x_756 Int) ) (= (mem2 x_756 x_755 x_754) (mem2 x_756 x_755 x_753))) (forall ( (x_757 Int) (x_758 Int) (x_759 Int) ) (=> (and  (mem2 x_757 x_758 x_754) (mem2 x_757 x_759 x_754)) (= x_758 x_759))) (forall ( (x_760 Int) ) (= (mem0 x_760 g_S1_0) (exists ( (x_761 Int) ) (mem2 x_760 x_761 x_754)))) (forall ( (x_762 Int) ) (=> (exists ( (x_763 Int) ) (mem2 x_763 x_762 x_754)) (and (>= x_762 1) (<= x_762 x_752)))))) (forall ( (x_764 Int) ) (=> (and (>= x_764 1) (<= x_764 x_752)) (exists ( (x_765 Int) ) (mem2 x_765 x_764 x_753))))) (forall ( (x_766 Int) (x_767 Int) (x_768 Int) ) (=> (and  (mem2 x_767 x_766 x_753) (mem2 x_768 x_766 x_753)) (= x_767 x_768))))) (> x_752 0))))
(assert (forall ((x_769 Int) ) (=> (exists ( (x_770 (P (C Int Int))) ) (and (and (exists ( (x_771 (P (C Int Int))) ) (and (forall ( (x_772 Int) (x_773 Int) ) (= (mem2 x_773 x_772 x_771) (mem2 x_773 x_772 x_770))) (forall ( (x_774 Int) (x_775 Int) (x_776 Int) ) (=> (and  (mem2 x_774 x_775 x_771) (mem2 x_774 x_776 x_771)) (= x_775 x_776))) (forall ( (x_777 Int) ) (= (mem0 x_777 g_S2_1) (exists ( (x_778 Int) ) (mem2 x_777 x_778 x_771)))) (forall ( (x_779 Int) ) (=> (exists ( (x_780 Int) ) (mem2 x_780 x_779 x_771)) (and (>= x_779 1) (<= x_779 x_769)))))) (forall ( (x_781 Int) ) (=> (and (>= x_781 1) (<= x_781 x_769)) (exists ( (x_782 Int) ) (mem2 x_782 x_781 x_770))))) (forall ( (x_783 Int) (x_784 Int) (x_785 Int) ) (=> (and  (mem2 x_784 x_783 x_770) (mem2 x_785 x_783 x_770)) (= x_784 x_785))))) (> x_769 1))))
(assert (forall ((x_786 Int) ) (=> (exists ( (x_787 (P (C Int Int))) ) (and (and (exists ( (x_788 (P (C Int Int))) ) (and (forall ( (x_789 Int) (x_790 Int) ) (= (mem2 x_790 x_789 x_788) (mem2 x_790 x_789 x_787))) (forall ( (x_791 Int) (x_792 Int) (x_793 Int) ) (=> (and  (mem2 x_791 x_792 x_788) (mem2 x_791 x_793 x_788)) (= x_792 x_793))) (forall ( (x_794 Int) ) (= (mem0 x_794 g_S3_2) (exists ( (x_795 Int) ) (mem2 x_794 x_795 x_788)))) (forall ( (x_796 Int) ) (=> (exists ( (x_797 Int) ) (mem2 x_797 x_796 x_788)) (and (>= x_796 1) (<= x_796 x_786)))))) (forall ( (x_798 Int) ) (=> (and (>= x_798 1) (<= x_798 x_786)) (exists ( (x_799 Int) ) (mem2 x_799 x_798 x_787))))) (forall ( (x_800 Int) (x_801 Int) (x_802 Int) ) (=> (and  (mem2 x_801 x_800 x_787) (mem2 x_802 x_800 x_787)) (= x_801 x_802))))) (> x_786 3))))
(assert (forall ((x_803 Int) ) (=> (exists ( (x_804 (P (C Int Int))) ) (and (and (exists ( (x_805 (P (C Int Int))) ) (and (forall ( (x_806 Int) (x_807 Int) ) (= (mem2 x_807 x_806 x_805) (mem2 x_807 x_806 x_804))) (forall ( (x_808 Int) (x_809 Int) (x_810 Int) ) (=> (and  (mem2 x_808 x_809 x_805) (mem2 x_808 x_810 x_805)) (= x_809 x_810))) (forall ( (x_811 Int) ) (= (mem0 x_811 g_S1_0) (exists ( (x_812 Int) ) (mem2 x_811 x_812 x_805)))) (forall ( (x_813 Int) ) (=> (exists ( (x_814 Int) ) (mem2 x_814 x_813 x_805)) (and (>= x_813 1) (<= x_813 x_803)))))) (forall ( (x_815 Int) ) (=> (and (>= x_815 1) (<= x_815 x_803)) (exists ( (x_816 Int) ) (mem2 x_816 x_815 x_804))))) (forall ( (x_817 Int) (x_818 Int) (x_819 Int) ) (=> (and  (mem2 x_818 x_817 x_804) (mem2 x_819 x_817 x_804)) (= x_818 x_819))))) (> 0 x_803))))
(assert (forall ((x_820 Int) ) (=> (exists ( (x_821 (P (C Int Int))) ) (and (and (exists ( (x_822 (P (C Int Int))) ) (and (forall ( (x_823 Int) (x_824 Int) ) (= (mem2 x_824 x_823 x_822) (mem2 x_824 x_823 x_821))) (forall ( (x_825 Int) (x_826 Int) (x_827 Int) ) (=> (and  (mem2 x_825 x_826 x_822) (mem2 x_825 x_827 x_822)) (= x_826 x_827))) (forall ( (x_828 Int) ) (= (mem0 x_828 g_S2_1) (exists ( (x_829 Int) ) (mem2 x_828 x_829 x_822)))) (forall ( (x_830 Int) ) (=> (exists ( (x_831 Int) ) (mem2 x_831 x_830 x_822)) (and (>= x_830 1) (<= x_830 x_820)))))) (forall ( (x_832 Int) ) (=> (and (>= x_832 1) (<= x_832 x_820)) (exists ( (x_833 Int) ) (mem2 x_833 x_832 x_821))))) (forall ( (x_834 Int) (x_835 Int) (x_836 Int) ) (=> (and  (mem2 x_835 x_834 x_821) (mem2 x_836 x_834 x_821)) (= x_835 x_836))))) (> 1 x_820))))
(assert (forall ((x_837 Int) ) (=> (exists ( (x_838 (P (C Int Int))) ) (and (and (exists ( (x_839 (P (C Int Int))) ) (and (forall ( (x_840 Int) (x_841 Int) ) (= (mem2 x_841 x_840 x_839) (mem2 x_841 x_840 x_838))) (forall ( (x_842 Int) (x_843 Int) (x_844 Int) ) (=> (and  (mem2 x_842 x_843 x_839) (mem2 x_842 x_844 x_839)) (= x_843 x_844))) (forall ( (x_845 Int) ) (= (mem0 x_845 g_S3_2) (exists ( (x_846 Int) ) (mem2 x_845 x_846 x_839)))) (forall ( (x_847 Int) ) (=> (exists ( (x_848 Int) ) (mem2 x_848 x_847 x_839)) (and (>= x_847 1) (<= x_847 x_837)))))) (forall ( (x_849 Int) ) (=> (and (>= x_849 1) (<= x_849 x_837)) (exists ( (x_850 Int) ) (mem2 x_850 x_849 x_838))))) (forall ( (x_851 Int) (x_852 Int) (x_853 Int) ) (=> (and  (mem2 x_852 x_851 x_838) (mem2 x_853 x_851 x_838)) (= x_852 x_853))))) (> 3 x_837))))
(assert (forall ((x_854 Int)(x_855 Int) ) (=> (and (exists ( (x_856 (P (C Int Int))) ) (and (and (exists ( (x_857 (P (C Int Int))) ) (and (forall ( (x_858 Int) (x_859 Int) ) (= (mem2 x_859 x_858 x_857) (mem2 x_859 x_858 x_856))) (forall ( (x_860 Int) (x_861 Int) (x_862 Int) ) (=> (and  (mem2 x_860 x_861 x_857) (mem2 x_860 x_862 x_857)) (= x_861 x_862))) (forall ( (x_863 Int) ) (= (mem0 x_863 g_S1_0) (exists ( (x_864 Int) ) (mem2 x_863 x_864 x_857)))) (forall ( (x_865 Int) ) (=> (exists ( (x_866 Int) ) (mem2 x_866 x_865 x_857)) (and (>= x_865 1) (<= x_865 x_854)))))) (forall ( (x_867 Int) ) (=> (and (>= x_867 1) (<= x_867 x_854)) (exists ( (x_868 Int) ) (mem2 x_868 x_867 x_856))))) (forall ( (x_869 Int) (x_870 Int) (x_871 Int) ) (=> (and  (mem2 x_870 x_869 x_856) (mem2 x_871 x_869 x_856)) (= x_870 x_871))))) (exists ( (x_872 (P (C Int Int))) ) (and (and (exists ( (x_873 (P (C Int Int))) ) (and (forall ( (x_874 Int) (x_875 Int) ) (= (mem2 x_875 x_874 x_873) (mem2 x_875 x_874 x_872))) (forall ( (x_876 Int) (x_877 Int) (x_878 Int) ) (=> (and  (mem2 x_876 x_877 x_873) (mem2 x_876 x_878 x_873)) (= x_877 x_878))) (forall ( (x_879 Int) ) (= (mem0 x_879 g_S2_1) (exists ( (x_880 Int) ) (mem2 x_879 x_880 x_873)))) (forall ( (x_881 Int) ) (=> (exists ( (x_882 Int) ) (mem2 x_882 x_881 x_873)) (and (>= x_881 1) (<= x_881 x_855)))))) (forall ( (x_883 Int) ) (=> (and (>= x_883 1) (<= x_883 x_855)) (exists ( (x_884 Int) ) (mem2 x_884 x_883 x_872))))) (forall ( (x_885 Int) (x_886 Int) (x_887 Int) ) (=> (and  (mem2 x_886 x_885 x_872) (mem2 x_887 x_885 x_872)) (= x_886 x_887)))))) (> x_854 x_855))))
; Local hypotheses
; Goal
(assert (not (forall ((x_888 Int) ) (=> (and  (mem0 x_888 g_S2_1) (forall ( (x_889 Int) ) (=> (mem0 x_889 g_S2_1) (<= x_888 x_889)))) (> x_888 3)))))
(check-sat)
(exit)
