(set-option :print-success false)
(set-logic ALL)
; PO 31 0
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
(assert (forall ((x_3938 (P Int)) ) (=> (forall ( (x_3939 Int) ) (= (mem0 x_3939 x_3938) (exists ( (x_3940 Int) ) (and  (mem0 x_3940 g_S1_0) (= x_3939 x_3940))))) (<= (isum x_3938) 0))))
(assert (forall ((x_3941 (P Int)) ) (=> (forall ( (x_3942 Int) ) (= (mem0 x_3942 x_3941) (exists ( (x_3943 Int) ) (and  (mem0 x_3943 g_S2_1) (= x_3942 x_3943))))) (<= (isum x_3941) 1))))
(assert (forall ((x_3944 (P Int)) ) (=> (forall ( (x_3945 Int) ) (= (mem0 x_3945 x_3944) (exists ( (x_3946 Int) ) (and  (mem0 x_3946 g_S3_2) (= x_3945 x_3946))))) (<= (isum x_3944) 6))))
(assert (forall ((x_3947 (P Int)) ) (=> (forall ( (x_3948 Int) ) (= (mem0 x_3948 x_3947) (exists ( (x_3949 Int) ) (and  (mem0 x_3949 g_S1_0) (= x_3948 x_3949))))) (<= (iprod x_3947) 1))))
(assert (forall ((x_3950 (P Int)) ) (=> (forall ( (x_3951 Int) ) (= (mem0 x_3951 x_3950) (exists ( (x_3952 Int) ) (and  (mem0 x_3952 g_S2_1) (= x_3951 x_3952))))) (<= (iprod x_3950) 1))))
(assert (forall ((x_3953 (P Int)) ) (=> (forall ( (x_3954 Int) ) (= (mem0 x_3954 x_3953) (exists ( (x_3955 Int) ) (and  (mem0 x_3955 g_S3_2) (= x_3954 x_3955))))) (<= (iprod x_3953) 6))))
(assert (forall ((x_3956 Int) ) (=> (exists ( (x_3957 (P (C Int Int))) ) (and (and (exists ( (x_3958 (P (C Int Int))) ) (and (forall ( (x_3959 Int) (x_3960 Int) ) (= (mem2 x_3960 x_3959 x_3958) (mem2 x_3960 x_3959 x_3957))) (forall ( (x_3961 Int) (x_3962 Int) (x_3963 Int) ) (=> (and  (mem2 x_3961 x_3962 x_3958) (mem2 x_3961 x_3963 x_3958)) (= x_3962 x_3963))) (forall ( (x_3964 Int) ) (= (mem0 x_3964 g_S1_0) (exists ( (x_3965 Int) ) (mem2 x_3964 x_3965 x_3958)))) (forall ( (x_3966 Int) ) (=> (exists ( (x_3967 Int) ) (mem2 x_3967 x_3966 x_3958)) (and (>= x_3966 1) (<= x_3966 x_3956)))))) (forall ( (x_3968 Int) ) (=> (and (>= x_3968 1) (<= x_3968 x_3956)) (exists ( (x_3969 Int) ) (mem2 x_3969 x_3968 x_3957))))) (forall ( (x_3970 Int) (x_3971 Int) (x_3972 Int) ) (=> (and  (mem2 x_3971 x_3970 x_3957) (mem2 x_3972 x_3970 x_3957)) (= x_3971 x_3972))))) (<= x_3956 0))))
(assert (forall ((x_3973 Int) ) (=> (exists ( (x_3974 (P (C Int Int))) ) (and (and (exists ( (x_3975 (P (C Int Int))) ) (and (forall ( (x_3976 Int) (x_3977 Int) ) (= (mem2 x_3977 x_3976 x_3975) (mem2 x_3977 x_3976 x_3974))) (forall ( (x_3978 Int) (x_3979 Int) (x_3980 Int) ) (=> (and  (mem2 x_3978 x_3979 x_3975) (mem2 x_3978 x_3980 x_3975)) (= x_3979 x_3980))) (forall ( (x_3981 Int) ) (= (mem0 x_3981 g_S2_1) (exists ( (x_3982 Int) ) (mem2 x_3981 x_3982 x_3975)))) (forall ( (x_3983 Int) ) (=> (exists ( (x_3984 Int) ) (mem2 x_3984 x_3983 x_3975)) (and (>= x_3983 1) (<= x_3983 x_3973)))))) (forall ( (x_3985 Int) ) (=> (and (>= x_3985 1) (<= x_3985 x_3973)) (exists ( (x_3986 Int) ) (mem2 x_3986 x_3985 x_3974))))) (forall ( (x_3987 Int) (x_3988 Int) (x_3989 Int) ) (=> (and  (mem2 x_3988 x_3987 x_3974) (mem2 x_3989 x_3987 x_3974)) (= x_3988 x_3989))))) (<= x_3973 1))))
(assert (forall ((x_3990 Int) ) (=> (exists ( (x_3991 (P (C Int Int))) ) (and (and (exists ( (x_3992 (P (C Int Int))) ) (and (forall ( (x_3993 Int) (x_3994 Int) ) (= (mem2 x_3994 x_3993 x_3992) (mem2 x_3994 x_3993 x_3991))) (forall ( (x_3995 Int) (x_3996 Int) (x_3997 Int) ) (=> (and  (mem2 x_3995 x_3996 x_3992) (mem2 x_3995 x_3997 x_3992)) (= x_3996 x_3997))) (forall ( (x_3998 Int) ) (= (mem0 x_3998 g_S3_2) (exists ( (x_3999 Int) ) (mem2 x_3998 x_3999 x_3992)))) (forall ( (x_4000 Int) ) (=> (exists ( (x_4001 Int) ) (mem2 x_4001 x_4000 x_3992)) (and (>= x_4000 1) (<= x_4000 x_3990)))))) (forall ( (x_4002 Int) ) (=> (and (>= x_4002 1) (<= x_4002 x_3990)) (exists ( (x_4003 Int) ) (mem2 x_4003 x_4002 x_3991))))) (forall ( (x_4004 Int) (x_4005 Int) (x_4006 Int) ) (=> (and  (mem2 x_4005 x_4004 x_3991) (mem2 x_4006 x_4004 x_3991)) (= x_4005 x_4006))))) (<= x_3990 3))))
(assert (forall ((x_4007 Int) ) (=> (exists ( (x_4008 (P (C Int Int))) ) (and (and (exists ( (x_4009 (P (C Int Int))) ) (and (forall ( (x_4010 Int) (x_4011 Int) ) (= (mem2 x_4011 x_4010 x_4009) (mem2 x_4011 x_4010 x_4008))) (forall ( (x_4012 Int) (x_4013 Int) (x_4014 Int) ) (=> (and  (mem2 x_4012 x_4013 x_4009) (mem2 x_4012 x_4014 x_4009)) (= x_4013 x_4014))) (forall ( (x_4015 Int) ) (= (mem0 x_4015 g_S1_0) (exists ( (x_4016 Int) ) (mem2 x_4015 x_4016 x_4009)))) (forall ( (x_4017 Int) ) (=> (exists ( (x_4018 Int) ) (mem2 x_4018 x_4017 x_4009)) (and (>= x_4017 1) (<= x_4017 x_4007)))))) (forall ( (x_4019 Int) ) (=> (and (>= x_4019 1) (<= x_4019 x_4007)) (exists ( (x_4020 Int) ) (mem2 x_4020 x_4019 x_4008))))) (forall ( (x_4021 Int) (x_4022 Int) (x_4023 Int) ) (=> (and  (mem2 x_4022 x_4021 x_4008) (mem2 x_4023 x_4021 x_4008)) (= x_4022 x_4023))))) (<= 0 x_4007))))
(assert (forall ((x_4024 Int) ) (=> (exists ( (x_4025 (P (C Int Int))) ) (and (and (exists ( (x_4026 (P (C Int Int))) ) (and (forall ( (x_4027 Int) (x_4028 Int) ) (= (mem2 x_4028 x_4027 x_4026) (mem2 x_4028 x_4027 x_4025))) (forall ( (x_4029 Int) (x_4030 Int) (x_4031 Int) ) (=> (and  (mem2 x_4029 x_4030 x_4026) (mem2 x_4029 x_4031 x_4026)) (= x_4030 x_4031))) (forall ( (x_4032 Int) ) (= (mem0 x_4032 g_S2_1) (exists ( (x_4033 Int) ) (mem2 x_4032 x_4033 x_4026)))) (forall ( (x_4034 Int) ) (=> (exists ( (x_4035 Int) ) (mem2 x_4035 x_4034 x_4026)) (and (>= x_4034 1) (<= x_4034 x_4024)))))) (forall ( (x_4036 Int) ) (=> (and (>= x_4036 1) (<= x_4036 x_4024)) (exists ( (x_4037 Int) ) (mem2 x_4037 x_4036 x_4025))))) (forall ( (x_4038 Int) (x_4039 Int) (x_4040 Int) ) (=> (and  (mem2 x_4039 x_4038 x_4025) (mem2 x_4040 x_4038 x_4025)) (= x_4039 x_4040))))) (<= 1 x_4024))))
(assert (forall ((x_4041 Int) ) (=> (exists ( (x_4042 (P (C Int Int))) ) (and (and (exists ( (x_4043 (P (C Int Int))) ) (and (forall ( (x_4044 Int) (x_4045 Int) ) (= (mem2 x_4045 x_4044 x_4043) (mem2 x_4045 x_4044 x_4042))) (forall ( (x_4046 Int) (x_4047 Int) (x_4048 Int) ) (=> (and  (mem2 x_4046 x_4047 x_4043) (mem2 x_4046 x_4048 x_4043)) (= x_4047 x_4048))) (forall ( (x_4049 Int) ) (= (mem0 x_4049 g_S3_2) (exists ( (x_4050 Int) ) (mem2 x_4049 x_4050 x_4043)))) (forall ( (x_4051 Int) ) (=> (exists ( (x_4052 Int) ) (mem2 x_4052 x_4051 x_4043)) (and (>= x_4051 1) (<= x_4051 x_4041)))))) (forall ( (x_4053 Int) ) (=> (and (>= x_4053 1) (<= x_4053 x_4041)) (exists ( (x_4054 Int) ) (mem2 x_4054 x_4053 x_4042))))) (forall ( (x_4055 Int) (x_4056 Int) (x_4057 Int) ) (=> (and  (mem2 x_4056 x_4055 x_4042) (mem2 x_4057 x_4055 x_4042)) (= x_4056 x_4057))))) (<= 3 x_4041))))
(assert (forall ((x_4058 Int)(x_4059 Int) ) (=> (and (exists ( (x_4060 (P (C Int Int))) ) (and (and (exists ( (x_4061 (P (C Int Int))) ) (and (forall ( (x_4062 Int) (x_4063 Int) ) (= (mem2 x_4063 x_4062 x_4061) (mem2 x_4063 x_4062 x_4060))) (forall ( (x_4064 Int) (x_4065 Int) (x_4066 Int) ) (=> (and  (mem2 x_4064 x_4065 x_4061) (mem2 x_4064 x_4066 x_4061)) (= x_4065 x_4066))) (forall ( (x_4067 Int) ) (= (mem0 x_4067 g_S1_0) (exists ( (x_4068 Int) ) (mem2 x_4067 x_4068 x_4061)))) (forall ( (x_4069 Int) ) (=> (exists ( (x_4070 Int) ) (mem2 x_4070 x_4069 x_4061)) (and (>= x_4069 1) (<= x_4069 x_4058)))))) (forall ( (x_4071 Int) ) (=> (and (>= x_4071 1) (<= x_4071 x_4058)) (exists ( (x_4072 Int) ) (mem2 x_4072 x_4071 x_4060))))) (forall ( (x_4073 Int) (x_4074 Int) (x_4075 Int) ) (=> (and  (mem2 x_4074 x_4073 x_4060) (mem2 x_4075 x_4073 x_4060)) (= x_4074 x_4075))))) (exists ( (x_4076 (P (C Int Int))) ) (and (and (exists ( (x_4077 (P (C Int Int))) ) (and (forall ( (x_4078 Int) (x_4079 Int) ) (= (mem2 x_4079 x_4078 x_4077) (mem2 x_4079 x_4078 x_4076))) (forall ( (x_4080 Int) (x_4081 Int) (x_4082 Int) ) (=> (and  (mem2 x_4080 x_4081 x_4077) (mem2 x_4080 x_4082 x_4077)) (= x_4081 x_4082))) (forall ( (x_4083 Int) ) (= (mem0 x_4083 g_S2_1) (exists ( (x_4084 Int) ) (mem2 x_4083 x_4084 x_4077)))) (forall ( (x_4085 Int) ) (=> (exists ( (x_4086 Int) ) (mem2 x_4086 x_4085 x_4077)) (and (>= x_4085 1) (<= x_4085 x_4059)))))) (forall ( (x_4087 Int) ) (=> (and (>= x_4087 1) (<= x_4087 x_4059)) (exists ( (x_4088 Int) ) (mem2 x_4088 x_4087 x_4076))))) (forall ( (x_4089 Int) (x_4090 Int) (x_4091 Int) ) (=> (and  (mem2 x_4090 x_4089 x_4076) (mem2 x_4091 x_4089 x_4076)) (= x_4090 x_4091)))))) (<= x_4058 x_4059))))
(assert (forall ((x_4092 Int) ) (=> (and  (mem0 x_4092 g_S2_1) (forall ( (x_4093 Int) ) (=> (mem0 x_4093 g_S2_1) (<= x_4092 x_4093)))) (<= x_4092 3))))
(assert (forall ((x_4094 Int) ) (=> (and  (mem0 x_4094 g_S2_1) (forall ( (x_4095 Int) ) (=> (mem0 x_4095 g_S2_1) (>= x_4094 x_4095)))) (<= x_4094 1))))
(assert (forall ((x_4096 Int) ) (=> (and  (mem0 x_4096 g_S2_1) (forall ( (x_4097 Int) ) (=> (mem0 x_4097 g_S2_1) (<= x_4096 x_4097)))) (<= 1 x_4096))))
(assert (forall ((x_4098 Int) ) (=> (and  (mem0 x_4098 g_S2_1) (forall ( (x_4099 Int) ) (=> (mem0 x_4099 g_S2_1) (>= x_4098 x_4099)))) (<= 3 x_4098))))
(assert (forall ((x_4100 Int)(x_4101 Int) ) (=> (and (and  (mem0 x_4100 g_S1_0) (forall ( (x_4102 Int) ) (=> (mem0 x_4102 g_S1_0) (>= x_4100 x_4102)))) (and  (mem0 x_4101 g_S1_0) (forall ( (x_4103 Int) ) (=> (mem0 x_4103 g_S1_0) (<= x_4101 x_4103))))) (<= x_4100 x_4101))))
(assert (forall ((x_4104 Int) ) (=> (forall ((x_4105 Int) ) (=> (= x_4105 2) (mem2 x_4105 x_4104 g_rel1_3))) (<= x_4104 7))))
(assert (forall ((x_4106 Int) ) (=> (forall ((x_4107 Int) ) (=> (= x_4107 2) (mem2 x_4107 x_4106 g_rel1_3))) (<= 7 x_4106))))
(assert (forall ((x_4108 Int) ) (=> (forall ((x_4109 Int) ) (=> (= x_4109 1) (mem2 x_4109 x_4108 g_fun1_4))) (<= x_4108 3))))
(assert (forall ((x_4110 Int) ) (=> (forall ((x_4111 Int) ) (=> (= x_4111 1) (mem2 x_4111 x_4110 g_fun1_4))) (<= 3 x_4110))))
(assert (forall ((x_4112 Int)(x_4113 Int) ) (=> (and (forall ((x_4114 Int) ) (=> (= x_4114 1) (mem2 x_4114 x_4112 g_fun2_5))) (forall ((x_4115 Int) ) (=> (= x_4115 1) (mem2 x_4115 x_4113 g_fun3_6)))) (<= x_4112 x_4113))))
(assert (forall ((x_4116 Int) ) (=> (forall ((x_4117 Int) ) (=> (= x_4117 1) (mem2 x_4117 x_4116 g_ss_7))) (<= x_4116 7))))
(assert (forall ((x_4118 Int) ) (=> (forall ((x_4119 Int) ) (=> (= x_4119 1) (mem2 x_4119 x_4118 g_ss_7))) (<= 7 x_4118))))
(assert (forall ((x_4120 Int) ) (=> (forall ((x_4121 Int) ) (=> (forall ( (x_4122 Int) ) (= (exists ( (x_4123 Int) ) (mem2 x_4122 x_4123 g_ss_7)) (and (>= x_4122 1) (<= x_4122 x_4121)))) (mem2 x_4121 x_4120 g_ss_7))) (<= x_4120 21))))
(assert (forall ((x_4124 Int) ) (=> (forall ((x_4125 Int) ) (=> (forall ( (x_4126 Int) ) (= (exists ( (x_4127 Int) ) (mem2 x_4126 x_4127 g_ss_7)) (and (>= x_4126 1) (<= x_4126 x_4125)))) (mem2 x_4125 x_4124 g_ss_7))) (<= 21 x_4124))))
(assert (forall ((x_4128 Int)(x_4129 Int) ) (=> (and (forall ((x_4130 Int) ) (=> (= x_4130 1) (mem2 x_4130 x_4128 g_ss_7))) (forall ((x_4131 Int) ) (=> (forall ( (x_4132 Int) ) (= (exists ( (x_4133 Int) ) (mem2 x_4132 x_4133 g_ss_7)) (and (>= x_4132 1) (<= x_4132 x_4131)))) (mem2 x_4131 x_4129 g_ss_7)))) (<= x_4128 x_4129))))
(assert (forall ((x_4134 Int) ) (=> (forall ( (x_4135 Int) ) (= (exists ( (x_4136 Int) ) (mem2 x_4135 x_4136 g_ss_7)) (and (>= x_4135 1) (<= x_4135 x_4134)))) (<= x_4134 4))))
(assert (forall ((x_4137 Int) ) (=> (forall ( (x_4138 Int) ) (= (exists ( (x_4139 Int) ) (mem2 x_4138 x_4139 g_ss_7)) (and (>= x_4138 1) (<= x_4138 x_4137)))) (<= 4 x_4137))))
(assert (forall ((x_4140 Int) ) (=> (forall ( (x_4141 Int) ) (= (exists ( (x_4142 Int) ) (mem2 x_4141 x_4142 g_empty_seq_8)) (and (>= x_4141 1) (<= x_4141 x_4140)))) (<= x_4140 0))))
; Local hypotheses
; Goal
(assert (not (forall ((x_4143 Int) ) (=> (forall ( (x_4144 Int) ) (= (exists ( (x_4145 Int) ) (mem2 x_4144 x_4145 g_empty_seq_8)) (and (>= x_4144 1) (<= x_4144 x_4143)))) (<= 0 x_4143)))))
(check-sat)
(exit)
