(set-option :print-success false)
(set-logic ALL)
; PO 14 0
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
(assert (forall ((x_890 (P Int)) ) (=> (forall ( (x_891 Int) ) (= (mem0 x_891 x_890) (exists ( (x_892 Int) ) (and  (mem0 x_892 g_S1_0) (= x_891 x_892))))) (>= (isum x_890) 0))))
(assert (forall ((x_893 (P Int)) ) (=> (forall ( (x_894 Int) ) (= (mem0 x_894 x_893) (exists ( (x_895 Int) ) (and  (mem0 x_895 g_S2_1) (= x_894 x_895))))) (>= (isum x_893) 1))))
(assert (forall ((x_896 (P Int)) ) (=> (forall ( (x_897 Int) ) (= (mem0 x_897 x_896) (exists ( (x_898 Int) ) (and  (mem0 x_898 g_S3_2) (= x_897 x_898))))) (>= (isum x_896) 6))))
(assert (forall ((x_899 (P Int)) ) (=> (forall ( (x_900 Int) ) (= (mem0 x_900 x_899) (exists ( (x_901 Int) ) (and  (mem0 x_901 g_S1_0) (= x_900 x_901))))) (>= (iprod x_899) 1))))
(assert (forall ((x_902 (P Int)) ) (=> (forall ( (x_903 Int) ) (= (mem0 x_903 x_902) (exists ( (x_904 Int) ) (and  (mem0 x_904 g_S2_1) (= x_903 x_904))))) (>= (iprod x_902) 1))))
(assert (forall ((x_905 (P Int)) ) (=> (forall ( (x_906 Int) ) (= (mem0 x_906 x_905) (exists ( (x_907 Int) ) (and  (mem0 x_907 g_S3_2) (= x_906 x_907))))) (>= (iprod x_905) 6))))
(assert (forall ((x_908 Int) ) (=> (exists ( (x_909 (P (C Int Int))) ) (and (and (exists ( (x_910 (P (C Int Int))) ) (and (forall ( (x_911 Int) (x_912 Int) ) (= (mem2 x_912 x_911 x_910) (mem2 x_912 x_911 x_909))) (forall ( (x_913 Int) (x_914 Int) (x_915 Int) ) (=> (and  (mem2 x_913 x_914 x_910) (mem2 x_913 x_915 x_910)) (= x_914 x_915))) (forall ( (x_916 Int) ) (= (mem0 x_916 g_S1_0) (exists ( (x_917 Int) ) (mem2 x_916 x_917 x_910)))) (forall ( (x_918 Int) ) (=> (exists ( (x_919 Int) ) (mem2 x_919 x_918 x_910)) (and (>= x_918 1) (<= x_918 x_908)))))) (forall ( (x_920 Int) ) (=> (and (>= x_920 1) (<= x_920 x_908)) (exists ( (x_921 Int) ) (mem2 x_921 x_920 x_909))))) (forall ( (x_922 Int) (x_923 Int) (x_924 Int) ) (=> (and  (mem2 x_923 x_922 x_909) (mem2 x_924 x_922 x_909)) (= x_923 x_924))))) (>= x_908 0))))
(assert (forall ((x_925 Int) ) (=> (exists ( (x_926 (P (C Int Int))) ) (and (and (exists ( (x_927 (P (C Int Int))) ) (and (forall ( (x_928 Int) (x_929 Int) ) (= (mem2 x_929 x_928 x_927) (mem2 x_929 x_928 x_926))) (forall ( (x_930 Int) (x_931 Int) (x_932 Int) ) (=> (and  (mem2 x_930 x_931 x_927) (mem2 x_930 x_932 x_927)) (= x_931 x_932))) (forall ( (x_933 Int) ) (= (mem0 x_933 g_S2_1) (exists ( (x_934 Int) ) (mem2 x_933 x_934 x_927)))) (forall ( (x_935 Int) ) (=> (exists ( (x_936 Int) ) (mem2 x_936 x_935 x_927)) (and (>= x_935 1) (<= x_935 x_925)))))) (forall ( (x_937 Int) ) (=> (and (>= x_937 1) (<= x_937 x_925)) (exists ( (x_938 Int) ) (mem2 x_938 x_937 x_926))))) (forall ( (x_939 Int) (x_940 Int) (x_941 Int) ) (=> (and  (mem2 x_940 x_939 x_926) (mem2 x_941 x_939 x_926)) (= x_940 x_941))))) (>= x_925 1))))
(assert (forall ((x_942 Int) ) (=> (exists ( (x_943 (P (C Int Int))) ) (and (and (exists ( (x_944 (P (C Int Int))) ) (and (forall ( (x_945 Int) (x_946 Int) ) (= (mem2 x_946 x_945 x_944) (mem2 x_946 x_945 x_943))) (forall ( (x_947 Int) (x_948 Int) (x_949 Int) ) (=> (and  (mem2 x_947 x_948 x_944) (mem2 x_947 x_949 x_944)) (= x_948 x_949))) (forall ( (x_950 Int) ) (= (mem0 x_950 g_S3_2) (exists ( (x_951 Int) ) (mem2 x_950 x_951 x_944)))) (forall ( (x_952 Int) ) (=> (exists ( (x_953 Int) ) (mem2 x_953 x_952 x_944)) (and (>= x_952 1) (<= x_952 x_942)))))) (forall ( (x_954 Int) ) (=> (and (>= x_954 1) (<= x_954 x_942)) (exists ( (x_955 Int) ) (mem2 x_955 x_954 x_943))))) (forall ( (x_956 Int) (x_957 Int) (x_958 Int) ) (=> (and  (mem2 x_957 x_956 x_943) (mem2 x_958 x_956 x_943)) (= x_957 x_958))))) (>= x_942 3))))
(assert (forall ((x_959 Int) ) (=> (exists ( (x_960 (P (C Int Int))) ) (and (and (exists ( (x_961 (P (C Int Int))) ) (and (forall ( (x_962 Int) (x_963 Int) ) (= (mem2 x_963 x_962 x_961) (mem2 x_963 x_962 x_960))) (forall ( (x_964 Int) (x_965 Int) (x_966 Int) ) (=> (and  (mem2 x_964 x_965 x_961) (mem2 x_964 x_966 x_961)) (= x_965 x_966))) (forall ( (x_967 Int) ) (= (mem0 x_967 g_S1_0) (exists ( (x_968 Int) ) (mem2 x_967 x_968 x_961)))) (forall ( (x_969 Int) ) (=> (exists ( (x_970 Int) ) (mem2 x_970 x_969 x_961)) (and (>= x_969 1) (<= x_969 x_959)))))) (forall ( (x_971 Int) ) (=> (and (>= x_971 1) (<= x_971 x_959)) (exists ( (x_972 Int) ) (mem2 x_972 x_971 x_960))))) (forall ( (x_973 Int) (x_974 Int) (x_975 Int) ) (=> (and  (mem2 x_974 x_973 x_960) (mem2 x_975 x_973 x_960)) (= x_974 x_975))))) (>= 0 x_959))))
(assert (forall ((x_976 Int) ) (=> (exists ( (x_977 (P (C Int Int))) ) (and (and (exists ( (x_978 (P (C Int Int))) ) (and (forall ( (x_979 Int) (x_980 Int) ) (= (mem2 x_980 x_979 x_978) (mem2 x_980 x_979 x_977))) (forall ( (x_981 Int) (x_982 Int) (x_983 Int) ) (=> (and  (mem2 x_981 x_982 x_978) (mem2 x_981 x_983 x_978)) (= x_982 x_983))) (forall ( (x_984 Int) ) (= (mem0 x_984 g_S2_1) (exists ( (x_985 Int) ) (mem2 x_984 x_985 x_978)))) (forall ( (x_986 Int) ) (=> (exists ( (x_987 Int) ) (mem2 x_987 x_986 x_978)) (and (>= x_986 1) (<= x_986 x_976)))))) (forall ( (x_988 Int) ) (=> (and (>= x_988 1) (<= x_988 x_976)) (exists ( (x_989 Int) ) (mem2 x_989 x_988 x_977))))) (forall ( (x_990 Int) (x_991 Int) (x_992 Int) ) (=> (and  (mem2 x_991 x_990 x_977) (mem2 x_992 x_990 x_977)) (= x_991 x_992))))) (>= 1 x_976))))
(assert (forall ((x_993 Int) ) (=> (exists ( (x_994 (P (C Int Int))) ) (and (and (exists ( (x_995 (P (C Int Int))) ) (and (forall ( (x_996 Int) (x_997 Int) ) (= (mem2 x_997 x_996 x_995) (mem2 x_997 x_996 x_994))) (forall ( (x_998 Int) (x_999 Int) (x_1000 Int) ) (=> (and  (mem2 x_998 x_999 x_995) (mem2 x_998 x_1000 x_995)) (= x_999 x_1000))) (forall ( (x_1001 Int) ) (= (mem0 x_1001 g_S3_2) (exists ( (x_1002 Int) ) (mem2 x_1001 x_1002 x_995)))) (forall ( (x_1003 Int) ) (=> (exists ( (x_1004 Int) ) (mem2 x_1004 x_1003 x_995)) (and (>= x_1003 1) (<= x_1003 x_993)))))) (forall ( (x_1005 Int) ) (=> (and (>= x_1005 1) (<= x_1005 x_993)) (exists ( (x_1006 Int) ) (mem2 x_1006 x_1005 x_994))))) (forall ( (x_1007 Int) (x_1008 Int) (x_1009 Int) ) (=> (and  (mem2 x_1008 x_1007 x_994) (mem2 x_1009 x_1007 x_994)) (= x_1008 x_1009))))) (>= 3 x_993))))
(assert (forall ((x_1010 Int)(x_1011 Int) ) (=> (and (exists ( (x_1012 (P (C Int Int))) ) (and (and (exists ( (x_1013 (P (C Int Int))) ) (and (forall ( (x_1014 Int) (x_1015 Int) ) (= (mem2 x_1015 x_1014 x_1013) (mem2 x_1015 x_1014 x_1012))) (forall ( (x_1016 Int) (x_1017 Int) (x_1018 Int) ) (=> (and  (mem2 x_1016 x_1017 x_1013) (mem2 x_1016 x_1018 x_1013)) (= x_1017 x_1018))) (forall ( (x_1019 Int) ) (= (mem0 x_1019 g_S1_0) (exists ( (x_1020 Int) ) (mem2 x_1019 x_1020 x_1013)))) (forall ( (x_1021 Int) ) (=> (exists ( (x_1022 Int) ) (mem2 x_1022 x_1021 x_1013)) (and (>= x_1021 1) (<= x_1021 x_1010)))))) (forall ( (x_1023 Int) ) (=> (and (>= x_1023 1) (<= x_1023 x_1010)) (exists ( (x_1024 Int) ) (mem2 x_1024 x_1023 x_1012))))) (forall ( (x_1025 Int) (x_1026 Int) (x_1027 Int) ) (=> (and  (mem2 x_1026 x_1025 x_1012) (mem2 x_1027 x_1025 x_1012)) (= x_1026 x_1027))))) (exists ( (x_1028 (P (C Int Int))) ) (and (and (exists ( (x_1029 (P (C Int Int))) ) (and (forall ( (x_1030 Int) (x_1031 Int) ) (= (mem2 x_1031 x_1030 x_1029) (mem2 x_1031 x_1030 x_1028))) (forall ( (x_1032 Int) (x_1033 Int) (x_1034 Int) ) (=> (and  (mem2 x_1032 x_1033 x_1029) (mem2 x_1032 x_1034 x_1029)) (= x_1033 x_1034))) (forall ( (x_1035 Int) ) (= (mem0 x_1035 g_S2_1) (exists ( (x_1036 Int) ) (mem2 x_1035 x_1036 x_1029)))) (forall ( (x_1037 Int) ) (=> (exists ( (x_1038 Int) ) (mem2 x_1038 x_1037 x_1029)) (and (>= x_1037 1) (<= x_1037 x_1011)))))) (forall ( (x_1039 Int) ) (=> (and (>= x_1039 1) (<= x_1039 x_1011)) (exists ( (x_1040 Int) ) (mem2 x_1040 x_1039 x_1028))))) (forall ( (x_1041 Int) (x_1042 Int) (x_1043 Int) ) (=> (and  (mem2 x_1042 x_1041 x_1028) (mem2 x_1043 x_1041 x_1028)) (= x_1042 x_1043)))))) (>= x_1010 x_1011))))
(assert (forall ((x_1044 Int) ) (=> (and  (mem0 x_1044 g_S2_1) (forall ( (x_1045 Int) ) (=> (mem0 x_1045 g_S2_1) (<= x_1044 x_1045)))) (>= x_1044 3))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1046 Int) ) (=> (and  (mem0 x_1046 g_S2_1) (forall ( (x_1047 Int) ) (=> (mem0 x_1047 g_S2_1) (>= x_1046 x_1047)))) (>= x_1046 1)))))
(check-sat)
(exit)
