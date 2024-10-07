(set-option :print-success false)
(set-logic ALL)
; PO 17 0
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
(assert (forall ((x_1370 (P Int)) ) (=> (forall ( (x_1371 Int) ) (= (mem0 x_1371 x_1370) (exists ( (x_1372 Int) ) (and  (mem0 x_1372 g_S1_0) (= x_1371 x_1372))))) (>= (isum x_1370) 0))))
(assert (forall ((x_1373 (P Int)) ) (=> (forall ( (x_1374 Int) ) (= (mem0 x_1374 x_1373) (exists ( (x_1375 Int) ) (and  (mem0 x_1375 g_S2_1) (= x_1374 x_1375))))) (>= (isum x_1373) 1))))
(assert (forall ((x_1376 (P Int)) ) (=> (forall ( (x_1377 Int) ) (= (mem0 x_1377 x_1376) (exists ( (x_1378 Int) ) (and  (mem0 x_1378 g_S3_2) (= x_1377 x_1378))))) (>= (isum x_1376) 6))))
(assert (forall ((x_1379 (P Int)) ) (=> (forall ( (x_1380 Int) ) (= (mem0 x_1380 x_1379) (exists ( (x_1381 Int) ) (and  (mem0 x_1381 g_S1_0) (= x_1380 x_1381))))) (>= (iprod x_1379) 1))))
(assert (forall ((x_1382 (P Int)) ) (=> (forall ( (x_1383 Int) ) (= (mem0 x_1383 x_1382) (exists ( (x_1384 Int) ) (and  (mem0 x_1384 g_S2_1) (= x_1383 x_1384))))) (>= (iprod x_1382) 1))))
(assert (forall ((x_1385 (P Int)) ) (=> (forall ( (x_1386 Int) ) (= (mem0 x_1386 x_1385) (exists ( (x_1387 Int) ) (and  (mem0 x_1387 g_S3_2) (= x_1386 x_1387))))) (>= (iprod x_1385) 6))))
(assert (forall ((x_1388 Int) ) (=> (exists ( (x_1389 (P (C Int Int))) ) (and (and (exists ( (x_1390 (P (C Int Int))) ) (and (forall ( (x_1391 Int) (x_1392 Int) ) (= (mem2 x_1392 x_1391 x_1390) (mem2 x_1392 x_1391 x_1389))) (forall ( (x_1393 Int) (x_1394 Int) (x_1395 Int) ) (=> (and  (mem2 x_1393 x_1394 x_1390) (mem2 x_1393 x_1395 x_1390)) (= x_1394 x_1395))) (forall ( (x_1396 Int) ) (= (mem0 x_1396 g_S1_0) (exists ( (x_1397 Int) ) (mem2 x_1396 x_1397 x_1390)))) (forall ( (x_1398 Int) ) (=> (exists ( (x_1399 Int) ) (mem2 x_1399 x_1398 x_1390)) (and (>= x_1398 1) (<= x_1398 x_1388)))))) (forall ( (x_1400 Int) ) (=> (and (>= x_1400 1) (<= x_1400 x_1388)) (exists ( (x_1401 Int) ) (mem2 x_1401 x_1400 x_1389))))) (forall ( (x_1402 Int) (x_1403 Int) (x_1404 Int) ) (=> (and  (mem2 x_1403 x_1402 x_1389) (mem2 x_1404 x_1402 x_1389)) (= x_1403 x_1404))))) (>= x_1388 0))))
(assert (forall ((x_1405 Int) ) (=> (exists ( (x_1406 (P (C Int Int))) ) (and (and (exists ( (x_1407 (P (C Int Int))) ) (and (forall ( (x_1408 Int) (x_1409 Int) ) (= (mem2 x_1409 x_1408 x_1407) (mem2 x_1409 x_1408 x_1406))) (forall ( (x_1410 Int) (x_1411 Int) (x_1412 Int) ) (=> (and  (mem2 x_1410 x_1411 x_1407) (mem2 x_1410 x_1412 x_1407)) (= x_1411 x_1412))) (forall ( (x_1413 Int) ) (= (mem0 x_1413 g_S2_1) (exists ( (x_1414 Int) ) (mem2 x_1413 x_1414 x_1407)))) (forall ( (x_1415 Int) ) (=> (exists ( (x_1416 Int) ) (mem2 x_1416 x_1415 x_1407)) (and (>= x_1415 1) (<= x_1415 x_1405)))))) (forall ( (x_1417 Int) ) (=> (and (>= x_1417 1) (<= x_1417 x_1405)) (exists ( (x_1418 Int) ) (mem2 x_1418 x_1417 x_1406))))) (forall ( (x_1419 Int) (x_1420 Int) (x_1421 Int) ) (=> (and  (mem2 x_1420 x_1419 x_1406) (mem2 x_1421 x_1419 x_1406)) (= x_1420 x_1421))))) (>= x_1405 1))))
(assert (forall ((x_1422 Int) ) (=> (exists ( (x_1423 (P (C Int Int))) ) (and (and (exists ( (x_1424 (P (C Int Int))) ) (and (forall ( (x_1425 Int) (x_1426 Int) ) (= (mem2 x_1426 x_1425 x_1424) (mem2 x_1426 x_1425 x_1423))) (forall ( (x_1427 Int) (x_1428 Int) (x_1429 Int) ) (=> (and  (mem2 x_1427 x_1428 x_1424) (mem2 x_1427 x_1429 x_1424)) (= x_1428 x_1429))) (forall ( (x_1430 Int) ) (= (mem0 x_1430 g_S3_2) (exists ( (x_1431 Int) ) (mem2 x_1430 x_1431 x_1424)))) (forall ( (x_1432 Int) ) (=> (exists ( (x_1433 Int) ) (mem2 x_1433 x_1432 x_1424)) (and (>= x_1432 1) (<= x_1432 x_1422)))))) (forall ( (x_1434 Int) ) (=> (and (>= x_1434 1) (<= x_1434 x_1422)) (exists ( (x_1435 Int) ) (mem2 x_1435 x_1434 x_1423))))) (forall ( (x_1436 Int) (x_1437 Int) (x_1438 Int) ) (=> (and  (mem2 x_1437 x_1436 x_1423) (mem2 x_1438 x_1436 x_1423)) (= x_1437 x_1438))))) (>= x_1422 3))))
(assert (forall ((x_1439 Int) ) (=> (exists ( (x_1440 (P (C Int Int))) ) (and (and (exists ( (x_1441 (P (C Int Int))) ) (and (forall ( (x_1442 Int) (x_1443 Int) ) (= (mem2 x_1443 x_1442 x_1441) (mem2 x_1443 x_1442 x_1440))) (forall ( (x_1444 Int) (x_1445 Int) (x_1446 Int) ) (=> (and  (mem2 x_1444 x_1445 x_1441) (mem2 x_1444 x_1446 x_1441)) (= x_1445 x_1446))) (forall ( (x_1447 Int) ) (= (mem0 x_1447 g_S1_0) (exists ( (x_1448 Int) ) (mem2 x_1447 x_1448 x_1441)))) (forall ( (x_1449 Int) ) (=> (exists ( (x_1450 Int) ) (mem2 x_1450 x_1449 x_1441)) (and (>= x_1449 1) (<= x_1449 x_1439)))))) (forall ( (x_1451 Int) ) (=> (and (>= x_1451 1) (<= x_1451 x_1439)) (exists ( (x_1452 Int) ) (mem2 x_1452 x_1451 x_1440))))) (forall ( (x_1453 Int) (x_1454 Int) (x_1455 Int) ) (=> (and  (mem2 x_1454 x_1453 x_1440) (mem2 x_1455 x_1453 x_1440)) (= x_1454 x_1455))))) (>= 0 x_1439))))
(assert (forall ((x_1456 Int) ) (=> (exists ( (x_1457 (P (C Int Int))) ) (and (and (exists ( (x_1458 (P (C Int Int))) ) (and (forall ( (x_1459 Int) (x_1460 Int) ) (= (mem2 x_1460 x_1459 x_1458) (mem2 x_1460 x_1459 x_1457))) (forall ( (x_1461 Int) (x_1462 Int) (x_1463 Int) ) (=> (and  (mem2 x_1461 x_1462 x_1458) (mem2 x_1461 x_1463 x_1458)) (= x_1462 x_1463))) (forall ( (x_1464 Int) ) (= (mem0 x_1464 g_S2_1) (exists ( (x_1465 Int) ) (mem2 x_1464 x_1465 x_1458)))) (forall ( (x_1466 Int) ) (=> (exists ( (x_1467 Int) ) (mem2 x_1467 x_1466 x_1458)) (and (>= x_1466 1) (<= x_1466 x_1456)))))) (forall ( (x_1468 Int) ) (=> (and (>= x_1468 1) (<= x_1468 x_1456)) (exists ( (x_1469 Int) ) (mem2 x_1469 x_1468 x_1457))))) (forall ( (x_1470 Int) (x_1471 Int) (x_1472 Int) ) (=> (and  (mem2 x_1471 x_1470 x_1457) (mem2 x_1472 x_1470 x_1457)) (= x_1471 x_1472))))) (>= 1 x_1456))))
(assert (forall ((x_1473 Int) ) (=> (exists ( (x_1474 (P (C Int Int))) ) (and (and (exists ( (x_1475 (P (C Int Int))) ) (and (forall ( (x_1476 Int) (x_1477 Int) ) (= (mem2 x_1477 x_1476 x_1475) (mem2 x_1477 x_1476 x_1474))) (forall ( (x_1478 Int) (x_1479 Int) (x_1480 Int) ) (=> (and  (mem2 x_1478 x_1479 x_1475) (mem2 x_1478 x_1480 x_1475)) (= x_1479 x_1480))) (forall ( (x_1481 Int) ) (= (mem0 x_1481 g_S3_2) (exists ( (x_1482 Int) ) (mem2 x_1481 x_1482 x_1475)))) (forall ( (x_1483 Int) ) (=> (exists ( (x_1484 Int) ) (mem2 x_1484 x_1483 x_1475)) (and (>= x_1483 1) (<= x_1483 x_1473)))))) (forall ( (x_1485 Int) ) (=> (and (>= x_1485 1) (<= x_1485 x_1473)) (exists ( (x_1486 Int) ) (mem2 x_1486 x_1485 x_1474))))) (forall ( (x_1487 Int) (x_1488 Int) (x_1489 Int) ) (=> (and  (mem2 x_1488 x_1487 x_1474) (mem2 x_1489 x_1487 x_1474)) (= x_1488 x_1489))))) (>= 3 x_1473))))
(assert (forall ((x_1490 Int)(x_1491 Int) ) (=> (and (exists ( (x_1492 (P (C Int Int))) ) (and (and (exists ( (x_1493 (P (C Int Int))) ) (and (forall ( (x_1494 Int) (x_1495 Int) ) (= (mem2 x_1495 x_1494 x_1493) (mem2 x_1495 x_1494 x_1492))) (forall ( (x_1496 Int) (x_1497 Int) (x_1498 Int) ) (=> (and  (mem2 x_1496 x_1497 x_1493) (mem2 x_1496 x_1498 x_1493)) (= x_1497 x_1498))) (forall ( (x_1499 Int) ) (= (mem0 x_1499 g_S1_0) (exists ( (x_1500 Int) ) (mem2 x_1499 x_1500 x_1493)))) (forall ( (x_1501 Int) ) (=> (exists ( (x_1502 Int) ) (mem2 x_1502 x_1501 x_1493)) (and (>= x_1501 1) (<= x_1501 x_1490)))))) (forall ( (x_1503 Int) ) (=> (and (>= x_1503 1) (<= x_1503 x_1490)) (exists ( (x_1504 Int) ) (mem2 x_1504 x_1503 x_1492))))) (forall ( (x_1505 Int) (x_1506 Int) (x_1507 Int) ) (=> (and  (mem2 x_1506 x_1505 x_1492) (mem2 x_1507 x_1505 x_1492)) (= x_1506 x_1507))))) (exists ( (x_1508 (P (C Int Int))) ) (and (and (exists ( (x_1509 (P (C Int Int))) ) (and (forall ( (x_1510 Int) (x_1511 Int) ) (= (mem2 x_1511 x_1510 x_1509) (mem2 x_1511 x_1510 x_1508))) (forall ( (x_1512 Int) (x_1513 Int) (x_1514 Int) ) (=> (and  (mem2 x_1512 x_1513 x_1509) (mem2 x_1512 x_1514 x_1509)) (= x_1513 x_1514))) (forall ( (x_1515 Int) ) (= (mem0 x_1515 g_S2_1) (exists ( (x_1516 Int) ) (mem2 x_1515 x_1516 x_1509)))) (forall ( (x_1517 Int) ) (=> (exists ( (x_1518 Int) ) (mem2 x_1518 x_1517 x_1509)) (and (>= x_1517 1) (<= x_1517 x_1491)))))) (forall ( (x_1519 Int) ) (=> (and (>= x_1519 1) (<= x_1519 x_1491)) (exists ( (x_1520 Int) ) (mem2 x_1520 x_1519 x_1508))))) (forall ( (x_1521 Int) (x_1522 Int) (x_1523 Int) ) (=> (and  (mem2 x_1522 x_1521 x_1508) (mem2 x_1523 x_1521 x_1508)) (= x_1522 x_1523)))))) (>= x_1490 x_1491))))
(assert (forall ((x_1524 Int) ) (=> (and  (mem0 x_1524 g_S2_1) (forall ( (x_1525 Int) ) (=> (mem0 x_1525 g_S2_1) (<= x_1524 x_1525)))) (>= x_1524 3))))
(assert (forall ((x_1526 Int) ) (=> (and  (mem0 x_1526 g_S2_1) (forall ( (x_1527 Int) ) (=> (mem0 x_1527 g_S2_1) (>= x_1526 x_1527)))) (>= x_1526 1))))
(assert (forall ((x_1528 Int) ) (=> (and  (mem0 x_1528 g_S2_1) (forall ( (x_1529 Int) ) (=> (mem0 x_1529 g_S2_1) (<= x_1528 x_1529)))) (>= 1 x_1528))))
(assert (forall ((x_1530 Int) ) (=> (and  (mem0 x_1530 g_S2_1) (forall ( (x_1531 Int) ) (=> (mem0 x_1531 g_S2_1) (>= x_1530 x_1531)))) (>= 3 x_1530))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1532 Int)(x_1533 Int) ) (=> (and (and  (mem0 x_1532 g_S1_0) (forall ( (x_1534 Int) ) (=> (mem0 x_1534 g_S1_0) (>= x_1532 x_1534)))) (and  (mem0 x_1533 g_S1_0) (forall ( (x_1535 Int) ) (=> (mem0 x_1535 g_S1_0) (<= x_1533 x_1535))))) (>= x_1532 x_1533)))))
(check-sat)
(exit)
