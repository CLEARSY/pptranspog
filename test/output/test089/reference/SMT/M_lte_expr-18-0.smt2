(set-option :print-success false)
(set-logic ALL)
; PO 18 0
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
(assert (forall ((x_1536 (P Int)) ) (=> (forall ( (x_1537 Int) ) (= (mem0 x_1537 x_1536) (exists ( (x_1538 Int) ) (and  (mem0 x_1538 g_S1_0) (= x_1537 x_1538))))) (<= (isum x_1536) 0))))
(assert (forall ((x_1539 (P Int)) ) (=> (forall ( (x_1540 Int) ) (= (mem0 x_1540 x_1539) (exists ( (x_1541 Int) ) (and  (mem0 x_1541 g_S2_1) (= x_1540 x_1541))))) (<= (isum x_1539) 1))))
(assert (forall ((x_1542 (P Int)) ) (=> (forall ( (x_1543 Int) ) (= (mem0 x_1543 x_1542) (exists ( (x_1544 Int) ) (and  (mem0 x_1544 g_S3_2) (= x_1543 x_1544))))) (<= (isum x_1542) 6))))
(assert (forall ((x_1545 (P Int)) ) (=> (forall ( (x_1546 Int) ) (= (mem0 x_1546 x_1545) (exists ( (x_1547 Int) ) (and  (mem0 x_1547 g_S1_0) (= x_1546 x_1547))))) (<= (iprod x_1545) 1))))
(assert (forall ((x_1548 (P Int)) ) (=> (forall ( (x_1549 Int) ) (= (mem0 x_1549 x_1548) (exists ( (x_1550 Int) ) (and  (mem0 x_1550 g_S2_1) (= x_1549 x_1550))))) (<= (iprod x_1548) 1))))
(assert (forall ((x_1551 (P Int)) ) (=> (forall ( (x_1552 Int) ) (= (mem0 x_1552 x_1551) (exists ( (x_1553 Int) ) (and  (mem0 x_1553 g_S3_2) (= x_1552 x_1553))))) (<= (iprod x_1551) 6))))
(assert (forall ((x_1554 Int) ) (=> (exists ( (x_1555 (P (C Int Int))) ) (and (and (exists ( (x_1556 (P (C Int Int))) ) (and (forall ( (x_1557 Int) (x_1558 Int) ) (= (mem2 x_1558 x_1557 x_1556) (mem2 x_1558 x_1557 x_1555))) (forall ( (x_1559 Int) (x_1560 Int) (x_1561 Int) ) (=> (and  (mem2 x_1559 x_1560 x_1556) (mem2 x_1559 x_1561 x_1556)) (= x_1560 x_1561))) (forall ( (x_1562 Int) ) (= (mem0 x_1562 g_S1_0) (exists ( (x_1563 Int) ) (mem2 x_1562 x_1563 x_1556)))) (forall ( (x_1564 Int) ) (=> (exists ( (x_1565 Int) ) (mem2 x_1565 x_1564 x_1556)) (and (>= x_1564 1) (<= x_1564 x_1554)))))) (forall ( (x_1566 Int) ) (=> (and (>= x_1566 1) (<= x_1566 x_1554)) (exists ( (x_1567 Int) ) (mem2 x_1567 x_1566 x_1555))))) (forall ( (x_1568 Int) (x_1569 Int) (x_1570 Int) ) (=> (and  (mem2 x_1569 x_1568 x_1555) (mem2 x_1570 x_1568 x_1555)) (= x_1569 x_1570))))) (<= x_1554 0))))
(assert (forall ((x_1571 Int) ) (=> (exists ( (x_1572 (P (C Int Int))) ) (and (and (exists ( (x_1573 (P (C Int Int))) ) (and (forall ( (x_1574 Int) (x_1575 Int) ) (= (mem2 x_1575 x_1574 x_1573) (mem2 x_1575 x_1574 x_1572))) (forall ( (x_1576 Int) (x_1577 Int) (x_1578 Int) ) (=> (and  (mem2 x_1576 x_1577 x_1573) (mem2 x_1576 x_1578 x_1573)) (= x_1577 x_1578))) (forall ( (x_1579 Int) ) (= (mem0 x_1579 g_S2_1) (exists ( (x_1580 Int) ) (mem2 x_1579 x_1580 x_1573)))) (forall ( (x_1581 Int) ) (=> (exists ( (x_1582 Int) ) (mem2 x_1582 x_1581 x_1573)) (and (>= x_1581 1) (<= x_1581 x_1571)))))) (forall ( (x_1583 Int) ) (=> (and (>= x_1583 1) (<= x_1583 x_1571)) (exists ( (x_1584 Int) ) (mem2 x_1584 x_1583 x_1572))))) (forall ( (x_1585 Int) (x_1586 Int) (x_1587 Int) ) (=> (and  (mem2 x_1586 x_1585 x_1572) (mem2 x_1587 x_1585 x_1572)) (= x_1586 x_1587))))) (<= x_1571 1))))
(assert (forall ((x_1588 Int) ) (=> (exists ( (x_1589 (P (C Int Int))) ) (and (and (exists ( (x_1590 (P (C Int Int))) ) (and (forall ( (x_1591 Int) (x_1592 Int) ) (= (mem2 x_1592 x_1591 x_1590) (mem2 x_1592 x_1591 x_1589))) (forall ( (x_1593 Int) (x_1594 Int) (x_1595 Int) ) (=> (and  (mem2 x_1593 x_1594 x_1590) (mem2 x_1593 x_1595 x_1590)) (= x_1594 x_1595))) (forall ( (x_1596 Int) ) (= (mem0 x_1596 g_S3_2) (exists ( (x_1597 Int) ) (mem2 x_1596 x_1597 x_1590)))) (forall ( (x_1598 Int) ) (=> (exists ( (x_1599 Int) ) (mem2 x_1599 x_1598 x_1590)) (and (>= x_1598 1) (<= x_1598 x_1588)))))) (forall ( (x_1600 Int) ) (=> (and (>= x_1600 1) (<= x_1600 x_1588)) (exists ( (x_1601 Int) ) (mem2 x_1601 x_1600 x_1589))))) (forall ( (x_1602 Int) (x_1603 Int) (x_1604 Int) ) (=> (and  (mem2 x_1603 x_1602 x_1589) (mem2 x_1604 x_1602 x_1589)) (= x_1603 x_1604))))) (<= x_1588 3))))
(assert (forall ((x_1605 Int) ) (=> (exists ( (x_1606 (P (C Int Int))) ) (and (and (exists ( (x_1607 (P (C Int Int))) ) (and (forall ( (x_1608 Int) (x_1609 Int) ) (= (mem2 x_1609 x_1608 x_1607) (mem2 x_1609 x_1608 x_1606))) (forall ( (x_1610 Int) (x_1611 Int) (x_1612 Int) ) (=> (and  (mem2 x_1610 x_1611 x_1607) (mem2 x_1610 x_1612 x_1607)) (= x_1611 x_1612))) (forall ( (x_1613 Int) ) (= (mem0 x_1613 g_S1_0) (exists ( (x_1614 Int) ) (mem2 x_1613 x_1614 x_1607)))) (forall ( (x_1615 Int) ) (=> (exists ( (x_1616 Int) ) (mem2 x_1616 x_1615 x_1607)) (and (>= x_1615 1) (<= x_1615 x_1605)))))) (forall ( (x_1617 Int) ) (=> (and (>= x_1617 1) (<= x_1617 x_1605)) (exists ( (x_1618 Int) ) (mem2 x_1618 x_1617 x_1606))))) (forall ( (x_1619 Int) (x_1620 Int) (x_1621 Int) ) (=> (and  (mem2 x_1620 x_1619 x_1606) (mem2 x_1621 x_1619 x_1606)) (= x_1620 x_1621))))) (<= 0 x_1605))))
(assert (forall ((x_1622 Int) ) (=> (exists ( (x_1623 (P (C Int Int))) ) (and (and (exists ( (x_1624 (P (C Int Int))) ) (and (forall ( (x_1625 Int) (x_1626 Int) ) (= (mem2 x_1626 x_1625 x_1624) (mem2 x_1626 x_1625 x_1623))) (forall ( (x_1627 Int) (x_1628 Int) (x_1629 Int) ) (=> (and  (mem2 x_1627 x_1628 x_1624) (mem2 x_1627 x_1629 x_1624)) (= x_1628 x_1629))) (forall ( (x_1630 Int) ) (= (mem0 x_1630 g_S2_1) (exists ( (x_1631 Int) ) (mem2 x_1630 x_1631 x_1624)))) (forall ( (x_1632 Int) ) (=> (exists ( (x_1633 Int) ) (mem2 x_1633 x_1632 x_1624)) (and (>= x_1632 1) (<= x_1632 x_1622)))))) (forall ( (x_1634 Int) ) (=> (and (>= x_1634 1) (<= x_1634 x_1622)) (exists ( (x_1635 Int) ) (mem2 x_1635 x_1634 x_1623))))) (forall ( (x_1636 Int) (x_1637 Int) (x_1638 Int) ) (=> (and  (mem2 x_1637 x_1636 x_1623) (mem2 x_1638 x_1636 x_1623)) (= x_1637 x_1638))))) (<= 1 x_1622))))
(assert (forall ((x_1639 Int) ) (=> (exists ( (x_1640 (P (C Int Int))) ) (and (and (exists ( (x_1641 (P (C Int Int))) ) (and (forall ( (x_1642 Int) (x_1643 Int) ) (= (mem2 x_1643 x_1642 x_1641) (mem2 x_1643 x_1642 x_1640))) (forall ( (x_1644 Int) (x_1645 Int) (x_1646 Int) ) (=> (and  (mem2 x_1644 x_1645 x_1641) (mem2 x_1644 x_1646 x_1641)) (= x_1645 x_1646))) (forall ( (x_1647 Int) ) (= (mem0 x_1647 g_S3_2) (exists ( (x_1648 Int) ) (mem2 x_1647 x_1648 x_1641)))) (forall ( (x_1649 Int) ) (=> (exists ( (x_1650 Int) ) (mem2 x_1650 x_1649 x_1641)) (and (>= x_1649 1) (<= x_1649 x_1639)))))) (forall ( (x_1651 Int) ) (=> (and (>= x_1651 1) (<= x_1651 x_1639)) (exists ( (x_1652 Int) ) (mem2 x_1652 x_1651 x_1640))))) (forall ( (x_1653 Int) (x_1654 Int) (x_1655 Int) ) (=> (and  (mem2 x_1654 x_1653 x_1640) (mem2 x_1655 x_1653 x_1640)) (= x_1654 x_1655))))) (<= 3 x_1639))))
(assert (forall ((x_1656 Int)(x_1657 Int) ) (=> (and (exists ( (x_1658 (P (C Int Int))) ) (and (and (exists ( (x_1659 (P (C Int Int))) ) (and (forall ( (x_1660 Int) (x_1661 Int) ) (= (mem2 x_1661 x_1660 x_1659) (mem2 x_1661 x_1660 x_1658))) (forall ( (x_1662 Int) (x_1663 Int) (x_1664 Int) ) (=> (and  (mem2 x_1662 x_1663 x_1659) (mem2 x_1662 x_1664 x_1659)) (= x_1663 x_1664))) (forall ( (x_1665 Int) ) (= (mem0 x_1665 g_S1_0) (exists ( (x_1666 Int) ) (mem2 x_1665 x_1666 x_1659)))) (forall ( (x_1667 Int) ) (=> (exists ( (x_1668 Int) ) (mem2 x_1668 x_1667 x_1659)) (and (>= x_1667 1) (<= x_1667 x_1656)))))) (forall ( (x_1669 Int) ) (=> (and (>= x_1669 1) (<= x_1669 x_1656)) (exists ( (x_1670 Int) ) (mem2 x_1670 x_1669 x_1658))))) (forall ( (x_1671 Int) (x_1672 Int) (x_1673 Int) ) (=> (and  (mem2 x_1672 x_1671 x_1658) (mem2 x_1673 x_1671 x_1658)) (= x_1672 x_1673))))) (exists ( (x_1674 (P (C Int Int))) ) (and (and (exists ( (x_1675 (P (C Int Int))) ) (and (forall ( (x_1676 Int) (x_1677 Int) ) (= (mem2 x_1677 x_1676 x_1675) (mem2 x_1677 x_1676 x_1674))) (forall ( (x_1678 Int) (x_1679 Int) (x_1680 Int) ) (=> (and  (mem2 x_1678 x_1679 x_1675) (mem2 x_1678 x_1680 x_1675)) (= x_1679 x_1680))) (forall ( (x_1681 Int) ) (= (mem0 x_1681 g_S2_1) (exists ( (x_1682 Int) ) (mem2 x_1681 x_1682 x_1675)))) (forall ( (x_1683 Int) ) (=> (exists ( (x_1684 Int) ) (mem2 x_1684 x_1683 x_1675)) (and (>= x_1683 1) (<= x_1683 x_1657)))))) (forall ( (x_1685 Int) ) (=> (and (>= x_1685 1) (<= x_1685 x_1657)) (exists ( (x_1686 Int) ) (mem2 x_1686 x_1685 x_1674))))) (forall ( (x_1687 Int) (x_1688 Int) (x_1689 Int) ) (=> (and  (mem2 x_1688 x_1687 x_1674) (mem2 x_1689 x_1687 x_1674)) (= x_1688 x_1689)))))) (<= x_1656 x_1657))))
(assert (forall ((x_1690 Int) ) (=> (and  (mem0 x_1690 g_S2_1) (forall ( (x_1691 Int) ) (=> (mem0 x_1691 g_S2_1) (<= x_1690 x_1691)))) (<= x_1690 3))))
(assert (forall ((x_1692 Int) ) (=> (and  (mem0 x_1692 g_S2_1) (forall ( (x_1693 Int) ) (=> (mem0 x_1693 g_S2_1) (>= x_1692 x_1693)))) (<= x_1692 1))))
(assert (forall ((x_1694 Int) ) (=> (and  (mem0 x_1694 g_S2_1) (forall ( (x_1695 Int) ) (=> (mem0 x_1695 g_S2_1) (<= x_1694 x_1695)))) (<= 1 x_1694))))
(assert (forall ((x_1696 Int) ) (=> (and  (mem0 x_1696 g_S2_1) (forall ( (x_1697 Int) ) (=> (mem0 x_1697 g_S2_1) (>= x_1696 x_1697)))) (<= 3 x_1696))))
(assert (forall ((x_1698 Int)(x_1699 Int) ) (=> (and (and  (mem0 x_1698 g_S1_0) (forall ( (x_1700 Int) ) (=> (mem0 x_1700 g_S1_0) (>= x_1698 x_1700)))) (and  (mem0 x_1699 g_S1_0) (forall ( (x_1701 Int) ) (=> (mem0 x_1701 g_S1_0) (<= x_1699 x_1701))))) (<= x_1698 x_1699))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1702 Int) ) (=> (forall ((x_1703 Int) ) (=> (= x_1703 2) (mem2 x_1703 x_1702 g_rel1_3))) (<= x_1702 7)))))
(check-sat)
(exit)
