(set-option :print-success false)
(set-logic ALL)
; PO 15 0
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
(assert (forall ((x_1048 (P Int)) ) (=> (forall ( (x_1049 Int) ) (= (mem0 x_1049 x_1048) (exists ( (x_1050 Int) ) (and  (mem0 x_1050 g_S1_0) (= x_1049 x_1050))))) (< (isum x_1048) 0))))
(assert (forall ((x_1051 (P Int)) ) (=> (forall ( (x_1052 Int) ) (= (mem0 x_1052 x_1051) (exists ( (x_1053 Int) ) (and  (mem0 x_1053 g_S2_1) (= x_1052 x_1053))))) (< (isum x_1051) 1))))
(assert (forall ((x_1054 (P Int)) ) (=> (forall ( (x_1055 Int) ) (= (mem0 x_1055 x_1054) (exists ( (x_1056 Int) ) (and  (mem0 x_1056 g_S3_2) (= x_1055 x_1056))))) (< (isum x_1054) 6))))
(assert (forall ((x_1057 (P Int)) ) (=> (forall ( (x_1058 Int) ) (= (mem0 x_1058 x_1057) (exists ( (x_1059 Int) ) (and  (mem0 x_1059 g_S1_0) (= x_1058 x_1059))))) (< (iprod x_1057) 1))))
(assert (forall ((x_1060 (P Int)) ) (=> (forall ( (x_1061 Int) ) (= (mem0 x_1061 x_1060) (exists ( (x_1062 Int) ) (and  (mem0 x_1062 g_S2_1) (= x_1061 x_1062))))) (< (iprod x_1060) 1))))
(assert (forall ((x_1063 (P Int)) ) (=> (forall ( (x_1064 Int) ) (= (mem0 x_1064 x_1063) (exists ( (x_1065 Int) ) (and  (mem0 x_1065 g_S3_2) (= x_1064 x_1065))))) (< (iprod x_1063) 6))))
(assert (forall ((x_1066 Int) ) (=> (exists ( (x_1067 (P (C Int Int))) ) (and (and (exists ( (x_1068 (P (C Int Int))) ) (and (forall ( (x_1069 Int) (x_1070 Int) ) (= (mem2 x_1070 x_1069 x_1068) (mem2 x_1070 x_1069 x_1067))) (forall ( (x_1071 Int) (x_1072 Int) (x_1073 Int) ) (=> (and  (mem2 x_1071 x_1072 x_1068) (mem2 x_1071 x_1073 x_1068)) (= x_1072 x_1073))) (forall ( (x_1074 Int) ) (= (mem0 x_1074 g_S1_0) (exists ( (x_1075 Int) ) (mem2 x_1074 x_1075 x_1068)))) (forall ( (x_1076 Int) ) (=> (exists ( (x_1077 Int) ) (mem2 x_1077 x_1076 x_1068)) (and (>= x_1076 1) (<= x_1076 x_1066)))))) (forall ( (x_1078 Int) ) (=> (and (>= x_1078 1) (<= x_1078 x_1066)) (exists ( (x_1079 Int) ) (mem2 x_1079 x_1078 x_1067))))) (forall ( (x_1080 Int) (x_1081 Int) (x_1082 Int) ) (=> (and  (mem2 x_1081 x_1080 x_1067) (mem2 x_1082 x_1080 x_1067)) (= x_1081 x_1082))))) (< x_1066 0))))
(assert (forall ((x_1083 Int) ) (=> (exists ( (x_1084 (P (C Int Int))) ) (and (and (exists ( (x_1085 (P (C Int Int))) ) (and (forall ( (x_1086 Int) (x_1087 Int) ) (= (mem2 x_1087 x_1086 x_1085) (mem2 x_1087 x_1086 x_1084))) (forall ( (x_1088 Int) (x_1089 Int) (x_1090 Int) ) (=> (and  (mem2 x_1088 x_1089 x_1085) (mem2 x_1088 x_1090 x_1085)) (= x_1089 x_1090))) (forall ( (x_1091 Int) ) (= (mem0 x_1091 g_S2_1) (exists ( (x_1092 Int) ) (mem2 x_1091 x_1092 x_1085)))) (forall ( (x_1093 Int) ) (=> (exists ( (x_1094 Int) ) (mem2 x_1094 x_1093 x_1085)) (and (>= x_1093 1) (<= x_1093 x_1083)))))) (forall ( (x_1095 Int) ) (=> (and (>= x_1095 1) (<= x_1095 x_1083)) (exists ( (x_1096 Int) ) (mem2 x_1096 x_1095 x_1084))))) (forall ( (x_1097 Int) (x_1098 Int) (x_1099 Int) ) (=> (and  (mem2 x_1098 x_1097 x_1084) (mem2 x_1099 x_1097 x_1084)) (= x_1098 x_1099))))) (< x_1083 1))))
(assert (forall ((x_1100 Int) ) (=> (exists ( (x_1101 (P (C Int Int))) ) (and (and (exists ( (x_1102 (P (C Int Int))) ) (and (forall ( (x_1103 Int) (x_1104 Int) ) (= (mem2 x_1104 x_1103 x_1102) (mem2 x_1104 x_1103 x_1101))) (forall ( (x_1105 Int) (x_1106 Int) (x_1107 Int) ) (=> (and  (mem2 x_1105 x_1106 x_1102) (mem2 x_1105 x_1107 x_1102)) (= x_1106 x_1107))) (forall ( (x_1108 Int) ) (= (mem0 x_1108 g_S3_2) (exists ( (x_1109 Int) ) (mem2 x_1108 x_1109 x_1102)))) (forall ( (x_1110 Int) ) (=> (exists ( (x_1111 Int) ) (mem2 x_1111 x_1110 x_1102)) (and (>= x_1110 1) (<= x_1110 x_1100)))))) (forall ( (x_1112 Int) ) (=> (and (>= x_1112 1) (<= x_1112 x_1100)) (exists ( (x_1113 Int) ) (mem2 x_1113 x_1112 x_1101))))) (forall ( (x_1114 Int) (x_1115 Int) (x_1116 Int) ) (=> (and  (mem2 x_1115 x_1114 x_1101) (mem2 x_1116 x_1114 x_1101)) (= x_1115 x_1116))))) (< x_1100 3))))
(assert (forall ((x_1117 Int) ) (=> (exists ( (x_1118 (P (C Int Int))) ) (and (and (exists ( (x_1119 (P (C Int Int))) ) (and (forall ( (x_1120 Int) (x_1121 Int) ) (= (mem2 x_1121 x_1120 x_1119) (mem2 x_1121 x_1120 x_1118))) (forall ( (x_1122 Int) (x_1123 Int) (x_1124 Int) ) (=> (and  (mem2 x_1122 x_1123 x_1119) (mem2 x_1122 x_1124 x_1119)) (= x_1123 x_1124))) (forall ( (x_1125 Int) ) (= (mem0 x_1125 g_S1_0) (exists ( (x_1126 Int) ) (mem2 x_1125 x_1126 x_1119)))) (forall ( (x_1127 Int) ) (=> (exists ( (x_1128 Int) ) (mem2 x_1128 x_1127 x_1119)) (and (>= x_1127 1) (<= x_1127 x_1117)))))) (forall ( (x_1129 Int) ) (=> (and (>= x_1129 1) (<= x_1129 x_1117)) (exists ( (x_1130 Int) ) (mem2 x_1130 x_1129 x_1118))))) (forall ( (x_1131 Int) (x_1132 Int) (x_1133 Int) ) (=> (and  (mem2 x_1132 x_1131 x_1118) (mem2 x_1133 x_1131 x_1118)) (= x_1132 x_1133))))) (< 0 x_1117))))
(assert (forall ((x_1134 Int) ) (=> (exists ( (x_1135 (P (C Int Int))) ) (and (and (exists ( (x_1136 (P (C Int Int))) ) (and (forall ( (x_1137 Int) (x_1138 Int) ) (= (mem2 x_1138 x_1137 x_1136) (mem2 x_1138 x_1137 x_1135))) (forall ( (x_1139 Int) (x_1140 Int) (x_1141 Int) ) (=> (and  (mem2 x_1139 x_1140 x_1136) (mem2 x_1139 x_1141 x_1136)) (= x_1140 x_1141))) (forall ( (x_1142 Int) ) (= (mem0 x_1142 g_S2_1) (exists ( (x_1143 Int) ) (mem2 x_1142 x_1143 x_1136)))) (forall ( (x_1144 Int) ) (=> (exists ( (x_1145 Int) ) (mem2 x_1145 x_1144 x_1136)) (and (>= x_1144 1) (<= x_1144 x_1134)))))) (forall ( (x_1146 Int) ) (=> (and (>= x_1146 1) (<= x_1146 x_1134)) (exists ( (x_1147 Int) ) (mem2 x_1147 x_1146 x_1135))))) (forall ( (x_1148 Int) (x_1149 Int) (x_1150 Int) ) (=> (and  (mem2 x_1149 x_1148 x_1135) (mem2 x_1150 x_1148 x_1135)) (= x_1149 x_1150))))) (< 1 x_1134))))
(assert (forall ((x_1151 Int) ) (=> (exists ( (x_1152 (P (C Int Int))) ) (and (and (exists ( (x_1153 (P (C Int Int))) ) (and (forall ( (x_1154 Int) (x_1155 Int) ) (= (mem2 x_1155 x_1154 x_1153) (mem2 x_1155 x_1154 x_1152))) (forall ( (x_1156 Int) (x_1157 Int) (x_1158 Int) ) (=> (and  (mem2 x_1156 x_1157 x_1153) (mem2 x_1156 x_1158 x_1153)) (= x_1157 x_1158))) (forall ( (x_1159 Int) ) (= (mem0 x_1159 g_S3_2) (exists ( (x_1160 Int) ) (mem2 x_1159 x_1160 x_1153)))) (forall ( (x_1161 Int) ) (=> (exists ( (x_1162 Int) ) (mem2 x_1162 x_1161 x_1153)) (and (>= x_1161 1) (<= x_1161 x_1151)))))) (forall ( (x_1163 Int) ) (=> (and (>= x_1163 1) (<= x_1163 x_1151)) (exists ( (x_1164 Int) ) (mem2 x_1164 x_1163 x_1152))))) (forall ( (x_1165 Int) (x_1166 Int) (x_1167 Int) ) (=> (and  (mem2 x_1166 x_1165 x_1152) (mem2 x_1167 x_1165 x_1152)) (= x_1166 x_1167))))) (< 3 x_1151))))
(assert (forall ((x_1168 Int)(x_1169 Int) ) (=> (and (exists ( (x_1170 (P (C Int Int))) ) (and (and (exists ( (x_1171 (P (C Int Int))) ) (and (forall ( (x_1172 Int) (x_1173 Int) ) (= (mem2 x_1173 x_1172 x_1171) (mem2 x_1173 x_1172 x_1170))) (forall ( (x_1174 Int) (x_1175 Int) (x_1176 Int) ) (=> (and  (mem2 x_1174 x_1175 x_1171) (mem2 x_1174 x_1176 x_1171)) (= x_1175 x_1176))) (forall ( (x_1177 Int) ) (= (mem0 x_1177 g_S1_0) (exists ( (x_1178 Int) ) (mem2 x_1177 x_1178 x_1171)))) (forall ( (x_1179 Int) ) (=> (exists ( (x_1180 Int) ) (mem2 x_1180 x_1179 x_1171)) (and (>= x_1179 1) (<= x_1179 x_1168)))))) (forall ( (x_1181 Int) ) (=> (and (>= x_1181 1) (<= x_1181 x_1168)) (exists ( (x_1182 Int) ) (mem2 x_1182 x_1181 x_1170))))) (forall ( (x_1183 Int) (x_1184 Int) (x_1185 Int) ) (=> (and  (mem2 x_1184 x_1183 x_1170) (mem2 x_1185 x_1183 x_1170)) (= x_1184 x_1185))))) (exists ( (x_1186 (P (C Int Int))) ) (and (and (exists ( (x_1187 (P (C Int Int))) ) (and (forall ( (x_1188 Int) (x_1189 Int) ) (= (mem2 x_1189 x_1188 x_1187) (mem2 x_1189 x_1188 x_1186))) (forall ( (x_1190 Int) (x_1191 Int) (x_1192 Int) ) (=> (and  (mem2 x_1190 x_1191 x_1187) (mem2 x_1190 x_1192 x_1187)) (= x_1191 x_1192))) (forall ( (x_1193 Int) ) (= (mem0 x_1193 g_S2_1) (exists ( (x_1194 Int) ) (mem2 x_1193 x_1194 x_1187)))) (forall ( (x_1195 Int) ) (=> (exists ( (x_1196 Int) ) (mem2 x_1196 x_1195 x_1187)) (and (>= x_1195 1) (<= x_1195 x_1169)))))) (forall ( (x_1197 Int) ) (=> (and (>= x_1197 1) (<= x_1197 x_1169)) (exists ( (x_1198 Int) ) (mem2 x_1198 x_1197 x_1186))))) (forall ( (x_1199 Int) (x_1200 Int) (x_1201 Int) ) (=> (and  (mem2 x_1200 x_1199 x_1186) (mem2 x_1201 x_1199 x_1186)) (= x_1200 x_1201)))))) (< x_1168 x_1169))))
(assert (forall ((x_1202 Int) ) (=> (and  (mem0 x_1202 g_S2_1) (forall ( (x_1203 Int) ) (=> (mem0 x_1203 g_S2_1) (<= x_1202 x_1203)))) (< x_1202 3))))
(assert (forall ((x_1204 Int) ) (=> (and  (mem0 x_1204 g_S2_1) (forall ( (x_1205 Int) ) (=> (mem0 x_1205 g_S2_1) (>= x_1204 x_1205)))) (< x_1204 1))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1206 Int) ) (=> (and  (mem0 x_1206 g_S2_1) (forall ( (x_1207 Int) ) (=> (mem0 x_1207 g_S2_1) (<= x_1206 x_1207)))) (< 1 x_1206)))))
(check-sat)
(exit)
