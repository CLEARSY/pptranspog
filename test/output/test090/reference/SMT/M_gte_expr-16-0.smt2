(set-option :print-success false)
(set-logic ALL)
; PO 16 0
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
(assert (forall ((x_1208 (P Int)) ) (=> (forall ( (x_1209 Int) ) (= (mem0 x_1209 x_1208) (exists ( (x_1210 Int) ) (and  (mem0 x_1210 g_S1_0) (= x_1209 x_1210))))) (>= (isum x_1208) 0))))
(assert (forall ((x_1211 (P Int)) ) (=> (forall ( (x_1212 Int) ) (= (mem0 x_1212 x_1211) (exists ( (x_1213 Int) ) (and  (mem0 x_1213 g_S2_1) (= x_1212 x_1213))))) (>= (isum x_1211) 1))))
(assert (forall ((x_1214 (P Int)) ) (=> (forall ( (x_1215 Int) ) (= (mem0 x_1215 x_1214) (exists ( (x_1216 Int) ) (and  (mem0 x_1216 g_S3_2) (= x_1215 x_1216))))) (>= (isum x_1214) 6))))
(assert (forall ((x_1217 (P Int)) ) (=> (forall ( (x_1218 Int) ) (= (mem0 x_1218 x_1217) (exists ( (x_1219 Int) ) (and  (mem0 x_1219 g_S1_0) (= x_1218 x_1219))))) (>= (iprod x_1217) 1))))
(assert (forall ((x_1220 (P Int)) ) (=> (forall ( (x_1221 Int) ) (= (mem0 x_1221 x_1220) (exists ( (x_1222 Int) ) (and  (mem0 x_1222 g_S2_1) (= x_1221 x_1222))))) (>= (iprod x_1220) 1))))
(assert (forall ((x_1223 (P Int)) ) (=> (forall ( (x_1224 Int) ) (= (mem0 x_1224 x_1223) (exists ( (x_1225 Int) ) (and  (mem0 x_1225 g_S3_2) (= x_1224 x_1225))))) (>= (iprod x_1223) 6))))
(assert (forall ((x_1226 Int) ) (=> (exists ( (x_1227 (P (C Int Int))) ) (and (and (exists ( (x_1228 (P (C Int Int))) ) (and (forall ( (x_1229 Int) (x_1230 Int) ) (= (mem2 x_1230 x_1229 x_1228) (mem2 x_1230 x_1229 x_1227))) (forall ( (x_1231 Int) (x_1232 Int) (x_1233 Int) ) (=> (and  (mem2 x_1231 x_1232 x_1228) (mem2 x_1231 x_1233 x_1228)) (= x_1232 x_1233))) (forall ( (x_1234 Int) ) (= (mem0 x_1234 g_S1_0) (exists ( (x_1235 Int) ) (mem2 x_1234 x_1235 x_1228)))) (forall ( (x_1236 Int) ) (=> (exists ( (x_1237 Int) ) (mem2 x_1237 x_1236 x_1228)) (and (>= x_1236 1) (<= x_1236 x_1226)))))) (forall ( (x_1238 Int) ) (=> (and (>= x_1238 1) (<= x_1238 x_1226)) (exists ( (x_1239 Int) ) (mem2 x_1239 x_1238 x_1227))))) (forall ( (x_1240 Int) (x_1241 Int) (x_1242 Int) ) (=> (and  (mem2 x_1241 x_1240 x_1227) (mem2 x_1242 x_1240 x_1227)) (= x_1241 x_1242))))) (>= x_1226 0))))
(assert (forall ((x_1243 Int) ) (=> (exists ( (x_1244 (P (C Int Int))) ) (and (and (exists ( (x_1245 (P (C Int Int))) ) (and (forall ( (x_1246 Int) (x_1247 Int) ) (= (mem2 x_1247 x_1246 x_1245) (mem2 x_1247 x_1246 x_1244))) (forall ( (x_1248 Int) (x_1249 Int) (x_1250 Int) ) (=> (and  (mem2 x_1248 x_1249 x_1245) (mem2 x_1248 x_1250 x_1245)) (= x_1249 x_1250))) (forall ( (x_1251 Int) ) (= (mem0 x_1251 g_S2_1) (exists ( (x_1252 Int) ) (mem2 x_1251 x_1252 x_1245)))) (forall ( (x_1253 Int) ) (=> (exists ( (x_1254 Int) ) (mem2 x_1254 x_1253 x_1245)) (and (>= x_1253 1) (<= x_1253 x_1243)))))) (forall ( (x_1255 Int) ) (=> (and (>= x_1255 1) (<= x_1255 x_1243)) (exists ( (x_1256 Int) ) (mem2 x_1256 x_1255 x_1244))))) (forall ( (x_1257 Int) (x_1258 Int) (x_1259 Int) ) (=> (and  (mem2 x_1258 x_1257 x_1244) (mem2 x_1259 x_1257 x_1244)) (= x_1258 x_1259))))) (>= x_1243 1))))
(assert (forall ((x_1260 Int) ) (=> (exists ( (x_1261 (P (C Int Int))) ) (and (and (exists ( (x_1262 (P (C Int Int))) ) (and (forall ( (x_1263 Int) (x_1264 Int) ) (= (mem2 x_1264 x_1263 x_1262) (mem2 x_1264 x_1263 x_1261))) (forall ( (x_1265 Int) (x_1266 Int) (x_1267 Int) ) (=> (and  (mem2 x_1265 x_1266 x_1262) (mem2 x_1265 x_1267 x_1262)) (= x_1266 x_1267))) (forall ( (x_1268 Int) ) (= (mem0 x_1268 g_S3_2) (exists ( (x_1269 Int) ) (mem2 x_1268 x_1269 x_1262)))) (forall ( (x_1270 Int) ) (=> (exists ( (x_1271 Int) ) (mem2 x_1271 x_1270 x_1262)) (and (>= x_1270 1) (<= x_1270 x_1260)))))) (forall ( (x_1272 Int) ) (=> (and (>= x_1272 1) (<= x_1272 x_1260)) (exists ( (x_1273 Int) ) (mem2 x_1273 x_1272 x_1261))))) (forall ( (x_1274 Int) (x_1275 Int) (x_1276 Int) ) (=> (and  (mem2 x_1275 x_1274 x_1261) (mem2 x_1276 x_1274 x_1261)) (= x_1275 x_1276))))) (>= x_1260 3))))
(assert (forall ((x_1277 Int) ) (=> (exists ( (x_1278 (P (C Int Int))) ) (and (and (exists ( (x_1279 (P (C Int Int))) ) (and (forall ( (x_1280 Int) (x_1281 Int) ) (= (mem2 x_1281 x_1280 x_1279) (mem2 x_1281 x_1280 x_1278))) (forall ( (x_1282 Int) (x_1283 Int) (x_1284 Int) ) (=> (and  (mem2 x_1282 x_1283 x_1279) (mem2 x_1282 x_1284 x_1279)) (= x_1283 x_1284))) (forall ( (x_1285 Int) ) (= (mem0 x_1285 g_S1_0) (exists ( (x_1286 Int) ) (mem2 x_1285 x_1286 x_1279)))) (forall ( (x_1287 Int) ) (=> (exists ( (x_1288 Int) ) (mem2 x_1288 x_1287 x_1279)) (and (>= x_1287 1) (<= x_1287 x_1277)))))) (forall ( (x_1289 Int) ) (=> (and (>= x_1289 1) (<= x_1289 x_1277)) (exists ( (x_1290 Int) ) (mem2 x_1290 x_1289 x_1278))))) (forall ( (x_1291 Int) (x_1292 Int) (x_1293 Int) ) (=> (and  (mem2 x_1292 x_1291 x_1278) (mem2 x_1293 x_1291 x_1278)) (= x_1292 x_1293))))) (>= 0 x_1277))))
(assert (forall ((x_1294 Int) ) (=> (exists ( (x_1295 (P (C Int Int))) ) (and (and (exists ( (x_1296 (P (C Int Int))) ) (and (forall ( (x_1297 Int) (x_1298 Int) ) (= (mem2 x_1298 x_1297 x_1296) (mem2 x_1298 x_1297 x_1295))) (forall ( (x_1299 Int) (x_1300 Int) (x_1301 Int) ) (=> (and  (mem2 x_1299 x_1300 x_1296) (mem2 x_1299 x_1301 x_1296)) (= x_1300 x_1301))) (forall ( (x_1302 Int) ) (= (mem0 x_1302 g_S2_1) (exists ( (x_1303 Int) ) (mem2 x_1302 x_1303 x_1296)))) (forall ( (x_1304 Int) ) (=> (exists ( (x_1305 Int) ) (mem2 x_1305 x_1304 x_1296)) (and (>= x_1304 1) (<= x_1304 x_1294)))))) (forall ( (x_1306 Int) ) (=> (and (>= x_1306 1) (<= x_1306 x_1294)) (exists ( (x_1307 Int) ) (mem2 x_1307 x_1306 x_1295))))) (forall ( (x_1308 Int) (x_1309 Int) (x_1310 Int) ) (=> (and  (mem2 x_1309 x_1308 x_1295) (mem2 x_1310 x_1308 x_1295)) (= x_1309 x_1310))))) (>= 1 x_1294))))
(assert (forall ((x_1311 Int) ) (=> (exists ( (x_1312 (P (C Int Int))) ) (and (and (exists ( (x_1313 (P (C Int Int))) ) (and (forall ( (x_1314 Int) (x_1315 Int) ) (= (mem2 x_1315 x_1314 x_1313) (mem2 x_1315 x_1314 x_1312))) (forall ( (x_1316 Int) (x_1317 Int) (x_1318 Int) ) (=> (and  (mem2 x_1316 x_1317 x_1313) (mem2 x_1316 x_1318 x_1313)) (= x_1317 x_1318))) (forall ( (x_1319 Int) ) (= (mem0 x_1319 g_S3_2) (exists ( (x_1320 Int) ) (mem2 x_1319 x_1320 x_1313)))) (forall ( (x_1321 Int) ) (=> (exists ( (x_1322 Int) ) (mem2 x_1322 x_1321 x_1313)) (and (>= x_1321 1) (<= x_1321 x_1311)))))) (forall ( (x_1323 Int) ) (=> (and (>= x_1323 1) (<= x_1323 x_1311)) (exists ( (x_1324 Int) ) (mem2 x_1324 x_1323 x_1312))))) (forall ( (x_1325 Int) (x_1326 Int) (x_1327 Int) ) (=> (and  (mem2 x_1326 x_1325 x_1312) (mem2 x_1327 x_1325 x_1312)) (= x_1326 x_1327))))) (>= 3 x_1311))))
(assert (forall ((x_1328 Int)(x_1329 Int) ) (=> (and (exists ( (x_1330 (P (C Int Int))) ) (and (and (exists ( (x_1331 (P (C Int Int))) ) (and (forall ( (x_1332 Int) (x_1333 Int) ) (= (mem2 x_1333 x_1332 x_1331) (mem2 x_1333 x_1332 x_1330))) (forall ( (x_1334 Int) (x_1335 Int) (x_1336 Int) ) (=> (and  (mem2 x_1334 x_1335 x_1331) (mem2 x_1334 x_1336 x_1331)) (= x_1335 x_1336))) (forall ( (x_1337 Int) ) (= (mem0 x_1337 g_S1_0) (exists ( (x_1338 Int) ) (mem2 x_1337 x_1338 x_1331)))) (forall ( (x_1339 Int) ) (=> (exists ( (x_1340 Int) ) (mem2 x_1340 x_1339 x_1331)) (and (>= x_1339 1) (<= x_1339 x_1328)))))) (forall ( (x_1341 Int) ) (=> (and (>= x_1341 1) (<= x_1341 x_1328)) (exists ( (x_1342 Int) ) (mem2 x_1342 x_1341 x_1330))))) (forall ( (x_1343 Int) (x_1344 Int) (x_1345 Int) ) (=> (and  (mem2 x_1344 x_1343 x_1330) (mem2 x_1345 x_1343 x_1330)) (= x_1344 x_1345))))) (exists ( (x_1346 (P (C Int Int))) ) (and (and (exists ( (x_1347 (P (C Int Int))) ) (and (forall ( (x_1348 Int) (x_1349 Int) ) (= (mem2 x_1349 x_1348 x_1347) (mem2 x_1349 x_1348 x_1346))) (forall ( (x_1350 Int) (x_1351 Int) (x_1352 Int) ) (=> (and  (mem2 x_1350 x_1351 x_1347) (mem2 x_1350 x_1352 x_1347)) (= x_1351 x_1352))) (forall ( (x_1353 Int) ) (= (mem0 x_1353 g_S2_1) (exists ( (x_1354 Int) ) (mem2 x_1353 x_1354 x_1347)))) (forall ( (x_1355 Int) ) (=> (exists ( (x_1356 Int) ) (mem2 x_1356 x_1355 x_1347)) (and (>= x_1355 1) (<= x_1355 x_1329)))))) (forall ( (x_1357 Int) ) (=> (and (>= x_1357 1) (<= x_1357 x_1329)) (exists ( (x_1358 Int) ) (mem2 x_1358 x_1357 x_1346))))) (forall ( (x_1359 Int) (x_1360 Int) (x_1361 Int) ) (=> (and  (mem2 x_1360 x_1359 x_1346) (mem2 x_1361 x_1359 x_1346)) (= x_1360 x_1361)))))) (>= x_1328 x_1329))))
(assert (forall ((x_1362 Int) ) (=> (and  (mem0 x_1362 g_S2_1) (forall ( (x_1363 Int) ) (=> (mem0 x_1363 g_S2_1) (<= x_1362 x_1363)))) (>= x_1362 3))))
(assert (forall ((x_1364 Int) ) (=> (and  (mem0 x_1364 g_S2_1) (forall ( (x_1365 Int) ) (=> (mem0 x_1365 g_S2_1) (>= x_1364 x_1365)))) (>= x_1364 1))))
(assert (forall ((x_1366 Int) ) (=> (and  (mem0 x_1366 g_S2_1) (forall ( (x_1367 Int) ) (=> (mem0 x_1367 g_S2_1) (<= x_1366 x_1367)))) (>= 1 x_1366))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1368 Int) ) (=> (and  (mem0 x_1368 g_S2_1) (forall ( (x_1369 Int) ) (=> (mem0 x_1369 g_S2_1) (>= x_1368 x_1369)))) (>= 3 x_1368)))))
(check-sat)
(exit)
