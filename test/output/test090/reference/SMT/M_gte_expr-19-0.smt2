(set-option :print-success false)
(set-logic ALL)
; PO 19 0
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
(assert (forall ((x_1704 (P Int)) ) (=> (forall ( (x_1705 Int) ) (= (mem0 x_1705 x_1704) (exists ( (x_1706 Int) ) (and  (mem0 x_1706 g_S1_0) (= x_1705 x_1706))))) (>= (isum x_1704) 0))))
(assert (forall ((x_1707 (P Int)) ) (=> (forall ( (x_1708 Int) ) (= (mem0 x_1708 x_1707) (exists ( (x_1709 Int) ) (and  (mem0 x_1709 g_S2_1) (= x_1708 x_1709))))) (>= (isum x_1707) 1))))
(assert (forall ((x_1710 (P Int)) ) (=> (forall ( (x_1711 Int) ) (= (mem0 x_1711 x_1710) (exists ( (x_1712 Int) ) (and  (mem0 x_1712 g_S3_2) (= x_1711 x_1712))))) (>= (isum x_1710) 6))))
(assert (forall ((x_1713 (P Int)) ) (=> (forall ( (x_1714 Int) ) (= (mem0 x_1714 x_1713) (exists ( (x_1715 Int) ) (and  (mem0 x_1715 g_S1_0) (= x_1714 x_1715))))) (>= (iprod x_1713) 1))))
(assert (forall ((x_1716 (P Int)) ) (=> (forall ( (x_1717 Int) ) (= (mem0 x_1717 x_1716) (exists ( (x_1718 Int) ) (and  (mem0 x_1718 g_S2_1) (= x_1717 x_1718))))) (>= (iprod x_1716) 1))))
(assert (forall ((x_1719 (P Int)) ) (=> (forall ( (x_1720 Int) ) (= (mem0 x_1720 x_1719) (exists ( (x_1721 Int) ) (and  (mem0 x_1721 g_S3_2) (= x_1720 x_1721))))) (>= (iprod x_1719) 6))))
(assert (forall ((x_1722 Int) ) (=> (exists ( (x_1723 (P (C Int Int))) ) (and (and (exists ( (x_1724 (P (C Int Int))) ) (and (forall ( (x_1725 Int) (x_1726 Int) ) (= (mem2 x_1726 x_1725 x_1724) (mem2 x_1726 x_1725 x_1723))) (forall ( (x_1727 Int) (x_1728 Int) (x_1729 Int) ) (=> (and  (mem2 x_1727 x_1728 x_1724) (mem2 x_1727 x_1729 x_1724)) (= x_1728 x_1729))) (forall ( (x_1730 Int) ) (= (mem0 x_1730 g_S1_0) (exists ( (x_1731 Int) ) (mem2 x_1730 x_1731 x_1724)))) (forall ( (x_1732 Int) ) (=> (exists ( (x_1733 Int) ) (mem2 x_1733 x_1732 x_1724)) (and (>= x_1732 1) (<= x_1732 x_1722)))))) (forall ( (x_1734 Int) ) (=> (and (>= x_1734 1) (<= x_1734 x_1722)) (exists ( (x_1735 Int) ) (mem2 x_1735 x_1734 x_1723))))) (forall ( (x_1736 Int) (x_1737 Int) (x_1738 Int) ) (=> (and  (mem2 x_1737 x_1736 x_1723) (mem2 x_1738 x_1736 x_1723)) (= x_1737 x_1738))))) (>= x_1722 0))))
(assert (forall ((x_1739 Int) ) (=> (exists ( (x_1740 (P (C Int Int))) ) (and (and (exists ( (x_1741 (P (C Int Int))) ) (and (forall ( (x_1742 Int) (x_1743 Int) ) (= (mem2 x_1743 x_1742 x_1741) (mem2 x_1743 x_1742 x_1740))) (forall ( (x_1744 Int) (x_1745 Int) (x_1746 Int) ) (=> (and  (mem2 x_1744 x_1745 x_1741) (mem2 x_1744 x_1746 x_1741)) (= x_1745 x_1746))) (forall ( (x_1747 Int) ) (= (mem0 x_1747 g_S2_1) (exists ( (x_1748 Int) ) (mem2 x_1747 x_1748 x_1741)))) (forall ( (x_1749 Int) ) (=> (exists ( (x_1750 Int) ) (mem2 x_1750 x_1749 x_1741)) (and (>= x_1749 1) (<= x_1749 x_1739)))))) (forall ( (x_1751 Int) ) (=> (and (>= x_1751 1) (<= x_1751 x_1739)) (exists ( (x_1752 Int) ) (mem2 x_1752 x_1751 x_1740))))) (forall ( (x_1753 Int) (x_1754 Int) (x_1755 Int) ) (=> (and  (mem2 x_1754 x_1753 x_1740) (mem2 x_1755 x_1753 x_1740)) (= x_1754 x_1755))))) (>= x_1739 1))))
(assert (forall ((x_1756 Int) ) (=> (exists ( (x_1757 (P (C Int Int))) ) (and (and (exists ( (x_1758 (P (C Int Int))) ) (and (forall ( (x_1759 Int) (x_1760 Int) ) (= (mem2 x_1760 x_1759 x_1758) (mem2 x_1760 x_1759 x_1757))) (forall ( (x_1761 Int) (x_1762 Int) (x_1763 Int) ) (=> (and  (mem2 x_1761 x_1762 x_1758) (mem2 x_1761 x_1763 x_1758)) (= x_1762 x_1763))) (forall ( (x_1764 Int) ) (= (mem0 x_1764 g_S3_2) (exists ( (x_1765 Int) ) (mem2 x_1764 x_1765 x_1758)))) (forall ( (x_1766 Int) ) (=> (exists ( (x_1767 Int) ) (mem2 x_1767 x_1766 x_1758)) (and (>= x_1766 1) (<= x_1766 x_1756)))))) (forall ( (x_1768 Int) ) (=> (and (>= x_1768 1) (<= x_1768 x_1756)) (exists ( (x_1769 Int) ) (mem2 x_1769 x_1768 x_1757))))) (forall ( (x_1770 Int) (x_1771 Int) (x_1772 Int) ) (=> (and  (mem2 x_1771 x_1770 x_1757) (mem2 x_1772 x_1770 x_1757)) (= x_1771 x_1772))))) (>= x_1756 3))))
(assert (forall ((x_1773 Int) ) (=> (exists ( (x_1774 (P (C Int Int))) ) (and (and (exists ( (x_1775 (P (C Int Int))) ) (and (forall ( (x_1776 Int) (x_1777 Int) ) (= (mem2 x_1777 x_1776 x_1775) (mem2 x_1777 x_1776 x_1774))) (forall ( (x_1778 Int) (x_1779 Int) (x_1780 Int) ) (=> (and  (mem2 x_1778 x_1779 x_1775) (mem2 x_1778 x_1780 x_1775)) (= x_1779 x_1780))) (forall ( (x_1781 Int) ) (= (mem0 x_1781 g_S1_0) (exists ( (x_1782 Int) ) (mem2 x_1781 x_1782 x_1775)))) (forall ( (x_1783 Int) ) (=> (exists ( (x_1784 Int) ) (mem2 x_1784 x_1783 x_1775)) (and (>= x_1783 1) (<= x_1783 x_1773)))))) (forall ( (x_1785 Int) ) (=> (and (>= x_1785 1) (<= x_1785 x_1773)) (exists ( (x_1786 Int) ) (mem2 x_1786 x_1785 x_1774))))) (forall ( (x_1787 Int) (x_1788 Int) (x_1789 Int) ) (=> (and  (mem2 x_1788 x_1787 x_1774) (mem2 x_1789 x_1787 x_1774)) (= x_1788 x_1789))))) (>= 0 x_1773))))
(assert (forall ((x_1790 Int) ) (=> (exists ( (x_1791 (P (C Int Int))) ) (and (and (exists ( (x_1792 (P (C Int Int))) ) (and (forall ( (x_1793 Int) (x_1794 Int) ) (= (mem2 x_1794 x_1793 x_1792) (mem2 x_1794 x_1793 x_1791))) (forall ( (x_1795 Int) (x_1796 Int) (x_1797 Int) ) (=> (and  (mem2 x_1795 x_1796 x_1792) (mem2 x_1795 x_1797 x_1792)) (= x_1796 x_1797))) (forall ( (x_1798 Int) ) (= (mem0 x_1798 g_S2_1) (exists ( (x_1799 Int) ) (mem2 x_1798 x_1799 x_1792)))) (forall ( (x_1800 Int) ) (=> (exists ( (x_1801 Int) ) (mem2 x_1801 x_1800 x_1792)) (and (>= x_1800 1) (<= x_1800 x_1790)))))) (forall ( (x_1802 Int) ) (=> (and (>= x_1802 1) (<= x_1802 x_1790)) (exists ( (x_1803 Int) ) (mem2 x_1803 x_1802 x_1791))))) (forall ( (x_1804 Int) (x_1805 Int) (x_1806 Int) ) (=> (and  (mem2 x_1805 x_1804 x_1791) (mem2 x_1806 x_1804 x_1791)) (= x_1805 x_1806))))) (>= 1 x_1790))))
(assert (forall ((x_1807 Int) ) (=> (exists ( (x_1808 (P (C Int Int))) ) (and (and (exists ( (x_1809 (P (C Int Int))) ) (and (forall ( (x_1810 Int) (x_1811 Int) ) (= (mem2 x_1811 x_1810 x_1809) (mem2 x_1811 x_1810 x_1808))) (forall ( (x_1812 Int) (x_1813 Int) (x_1814 Int) ) (=> (and  (mem2 x_1812 x_1813 x_1809) (mem2 x_1812 x_1814 x_1809)) (= x_1813 x_1814))) (forall ( (x_1815 Int) ) (= (mem0 x_1815 g_S3_2) (exists ( (x_1816 Int) ) (mem2 x_1815 x_1816 x_1809)))) (forall ( (x_1817 Int) ) (=> (exists ( (x_1818 Int) ) (mem2 x_1818 x_1817 x_1809)) (and (>= x_1817 1) (<= x_1817 x_1807)))))) (forall ( (x_1819 Int) ) (=> (and (>= x_1819 1) (<= x_1819 x_1807)) (exists ( (x_1820 Int) ) (mem2 x_1820 x_1819 x_1808))))) (forall ( (x_1821 Int) (x_1822 Int) (x_1823 Int) ) (=> (and  (mem2 x_1822 x_1821 x_1808) (mem2 x_1823 x_1821 x_1808)) (= x_1822 x_1823))))) (>= 3 x_1807))))
(assert (forall ((x_1824 Int)(x_1825 Int) ) (=> (and (exists ( (x_1826 (P (C Int Int))) ) (and (and (exists ( (x_1827 (P (C Int Int))) ) (and (forall ( (x_1828 Int) (x_1829 Int) ) (= (mem2 x_1829 x_1828 x_1827) (mem2 x_1829 x_1828 x_1826))) (forall ( (x_1830 Int) (x_1831 Int) (x_1832 Int) ) (=> (and  (mem2 x_1830 x_1831 x_1827) (mem2 x_1830 x_1832 x_1827)) (= x_1831 x_1832))) (forall ( (x_1833 Int) ) (= (mem0 x_1833 g_S1_0) (exists ( (x_1834 Int) ) (mem2 x_1833 x_1834 x_1827)))) (forall ( (x_1835 Int) ) (=> (exists ( (x_1836 Int) ) (mem2 x_1836 x_1835 x_1827)) (and (>= x_1835 1) (<= x_1835 x_1824)))))) (forall ( (x_1837 Int) ) (=> (and (>= x_1837 1) (<= x_1837 x_1824)) (exists ( (x_1838 Int) ) (mem2 x_1838 x_1837 x_1826))))) (forall ( (x_1839 Int) (x_1840 Int) (x_1841 Int) ) (=> (and  (mem2 x_1840 x_1839 x_1826) (mem2 x_1841 x_1839 x_1826)) (= x_1840 x_1841))))) (exists ( (x_1842 (P (C Int Int))) ) (and (and (exists ( (x_1843 (P (C Int Int))) ) (and (forall ( (x_1844 Int) (x_1845 Int) ) (= (mem2 x_1845 x_1844 x_1843) (mem2 x_1845 x_1844 x_1842))) (forall ( (x_1846 Int) (x_1847 Int) (x_1848 Int) ) (=> (and  (mem2 x_1846 x_1847 x_1843) (mem2 x_1846 x_1848 x_1843)) (= x_1847 x_1848))) (forall ( (x_1849 Int) ) (= (mem0 x_1849 g_S2_1) (exists ( (x_1850 Int) ) (mem2 x_1849 x_1850 x_1843)))) (forall ( (x_1851 Int) ) (=> (exists ( (x_1852 Int) ) (mem2 x_1852 x_1851 x_1843)) (and (>= x_1851 1) (<= x_1851 x_1825)))))) (forall ( (x_1853 Int) ) (=> (and (>= x_1853 1) (<= x_1853 x_1825)) (exists ( (x_1854 Int) ) (mem2 x_1854 x_1853 x_1842))))) (forall ( (x_1855 Int) (x_1856 Int) (x_1857 Int) ) (=> (and  (mem2 x_1856 x_1855 x_1842) (mem2 x_1857 x_1855 x_1842)) (= x_1856 x_1857)))))) (>= x_1824 x_1825))))
(assert (forall ((x_1858 Int) ) (=> (and  (mem0 x_1858 g_S2_1) (forall ( (x_1859 Int) ) (=> (mem0 x_1859 g_S2_1) (<= x_1858 x_1859)))) (>= x_1858 3))))
(assert (forall ((x_1860 Int) ) (=> (and  (mem0 x_1860 g_S2_1) (forall ( (x_1861 Int) ) (=> (mem0 x_1861 g_S2_1) (>= x_1860 x_1861)))) (>= x_1860 1))))
(assert (forall ((x_1862 Int) ) (=> (and  (mem0 x_1862 g_S2_1) (forall ( (x_1863 Int) ) (=> (mem0 x_1863 g_S2_1) (<= x_1862 x_1863)))) (>= 1 x_1862))))
(assert (forall ((x_1864 Int) ) (=> (and  (mem0 x_1864 g_S2_1) (forall ( (x_1865 Int) ) (=> (mem0 x_1865 g_S2_1) (>= x_1864 x_1865)))) (>= 3 x_1864))))
(assert (forall ((x_1866 Int)(x_1867 Int) ) (=> (and (and  (mem0 x_1866 g_S1_0) (forall ( (x_1868 Int) ) (=> (mem0 x_1868 g_S1_0) (>= x_1866 x_1868)))) (and  (mem0 x_1867 g_S1_0) (forall ( (x_1869 Int) ) (=> (mem0 x_1869 g_S1_0) (<= x_1867 x_1869))))) (>= x_1866 x_1867))))
(assert (forall ((x_1870 Int) ) (=> (forall ((x_1871 Int) ) (=> (= x_1871 2) (mem2 x_1871 x_1870 g_rel1_3))) (>= x_1870 7))))
; Local hypotheses
; Goal
(assert (not (forall ((x_1872 Int) ) (=> (forall ((x_1873 Int) ) (=> (= x_1873 2) (mem2 x_1873 x_1872 g_rel1_3))) (>= 7 x_1872)))))
(check-sat)
(exit)
