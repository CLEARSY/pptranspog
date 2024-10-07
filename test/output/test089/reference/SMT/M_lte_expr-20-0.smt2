(set-option :print-success false)
(set-logic ALL)
; PO 20 0
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
(assert (forall ((x_1874 (P Int)) ) (=> (forall ( (x_1875 Int) ) (= (mem0 x_1875 x_1874) (exists ( (x_1876 Int) ) (and  (mem0 x_1876 g_S1_0) (= x_1875 x_1876))))) (<= (isum x_1874) 0))))
(assert (forall ((x_1877 (P Int)) ) (=> (forall ( (x_1878 Int) ) (= (mem0 x_1878 x_1877) (exists ( (x_1879 Int) ) (and  (mem0 x_1879 g_S2_1) (= x_1878 x_1879))))) (<= (isum x_1877) 1))))
(assert (forall ((x_1880 (P Int)) ) (=> (forall ( (x_1881 Int) ) (= (mem0 x_1881 x_1880) (exists ( (x_1882 Int) ) (and  (mem0 x_1882 g_S3_2) (= x_1881 x_1882))))) (<= (isum x_1880) 6))))
(assert (forall ((x_1883 (P Int)) ) (=> (forall ( (x_1884 Int) ) (= (mem0 x_1884 x_1883) (exists ( (x_1885 Int) ) (and  (mem0 x_1885 g_S1_0) (= x_1884 x_1885))))) (<= (iprod x_1883) 1))))
(assert (forall ((x_1886 (P Int)) ) (=> (forall ( (x_1887 Int) ) (= (mem0 x_1887 x_1886) (exists ( (x_1888 Int) ) (and  (mem0 x_1888 g_S2_1) (= x_1887 x_1888))))) (<= (iprod x_1886) 1))))
(assert (forall ((x_1889 (P Int)) ) (=> (forall ( (x_1890 Int) ) (= (mem0 x_1890 x_1889) (exists ( (x_1891 Int) ) (and  (mem0 x_1891 g_S3_2) (= x_1890 x_1891))))) (<= (iprod x_1889) 6))))
(assert (forall ((x_1892 Int) ) (=> (exists ( (x_1893 (P (C Int Int))) ) (and (and (exists ( (x_1894 (P (C Int Int))) ) (and (forall ( (x_1895 Int) (x_1896 Int) ) (= (mem2 x_1896 x_1895 x_1894) (mem2 x_1896 x_1895 x_1893))) (forall ( (x_1897 Int) (x_1898 Int) (x_1899 Int) ) (=> (and  (mem2 x_1897 x_1898 x_1894) (mem2 x_1897 x_1899 x_1894)) (= x_1898 x_1899))) (forall ( (x_1900 Int) ) (= (mem0 x_1900 g_S1_0) (exists ( (x_1901 Int) ) (mem2 x_1900 x_1901 x_1894)))) (forall ( (x_1902 Int) ) (=> (exists ( (x_1903 Int) ) (mem2 x_1903 x_1902 x_1894)) (and (>= x_1902 1) (<= x_1902 x_1892)))))) (forall ( (x_1904 Int) ) (=> (and (>= x_1904 1) (<= x_1904 x_1892)) (exists ( (x_1905 Int) ) (mem2 x_1905 x_1904 x_1893))))) (forall ( (x_1906 Int) (x_1907 Int) (x_1908 Int) ) (=> (and  (mem2 x_1907 x_1906 x_1893) (mem2 x_1908 x_1906 x_1893)) (= x_1907 x_1908))))) (<= x_1892 0))))
(assert (forall ((x_1909 Int) ) (=> (exists ( (x_1910 (P (C Int Int))) ) (and (and (exists ( (x_1911 (P (C Int Int))) ) (and (forall ( (x_1912 Int) (x_1913 Int) ) (= (mem2 x_1913 x_1912 x_1911) (mem2 x_1913 x_1912 x_1910))) (forall ( (x_1914 Int) (x_1915 Int) (x_1916 Int) ) (=> (and  (mem2 x_1914 x_1915 x_1911) (mem2 x_1914 x_1916 x_1911)) (= x_1915 x_1916))) (forall ( (x_1917 Int) ) (= (mem0 x_1917 g_S2_1) (exists ( (x_1918 Int) ) (mem2 x_1917 x_1918 x_1911)))) (forall ( (x_1919 Int) ) (=> (exists ( (x_1920 Int) ) (mem2 x_1920 x_1919 x_1911)) (and (>= x_1919 1) (<= x_1919 x_1909)))))) (forall ( (x_1921 Int) ) (=> (and (>= x_1921 1) (<= x_1921 x_1909)) (exists ( (x_1922 Int) ) (mem2 x_1922 x_1921 x_1910))))) (forall ( (x_1923 Int) (x_1924 Int) (x_1925 Int) ) (=> (and  (mem2 x_1924 x_1923 x_1910) (mem2 x_1925 x_1923 x_1910)) (= x_1924 x_1925))))) (<= x_1909 1))))
(assert (forall ((x_1926 Int) ) (=> (exists ( (x_1927 (P (C Int Int))) ) (and (and (exists ( (x_1928 (P (C Int Int))) ) (and (forall ( (x_1929 Int) (x_1930 Int) ) (= (mem2 x_1930 x_1929 x_1928) (mem2 x_1930 x_1929 x_1927))) (forall ( (x_1931 Int) (x_1932 Int) (x_1933 Int) ) (=> (and  (mem2 x_1931 x_1932 x_1928) (mem2 x_1931 x_1933 x_1928)) (= x_1932 x_1933))) (forall ( (x_1934 Int) ) (= (mem0 x_1934 g_S3_2) (exists ( (x_1935 Int) ) (mem2 x_1934 x_1935 x_1928)))) (forall ( (x_1936 Int) ) (=> (exists ( (x_1937 Int) ) (mem2 x_1937 x_1936 x_1928)) (and (>= x_1936 1) (<= x_1936 x_1926)))))) (forall ( (x_1938 Int) ) (=> (and (>= x_1938 1) (<= x_1938 x_1926)) (exists ( (x_1939 Int) ) (mem2 x_1939 x_1938 x_1927))))) (forall ( (x_1940 Int) (x_1941 Int) (x_1942 Int) ) (=> (and  (mem2 x_1941 x_1940 x_1927) (mem2 x_1942 x_1940 x_1927)) (= x_1941 x_1942))))) (<= x_1926 3))))
(assert (forall ((x_1943 Int) ) (=> (exists ( (x_1944 (P (C Int Int))) ) (and (and (exists ( (x_1945 (P (C Int Int))) ) (and (forall ( (x_1946 Int) (x_1947 Int) ) (= (mem2 x_1947 x_1946 x_1945) (mem2 x_1947 x_1946 x_1944))) (forall ( (x_1948 Int) (x_1949 Int) (x_1950 Int) ) (=> (and  (mem2 x_1948 x_1949 x_1945) (mem2 x_1948 x_1950 x_1945)) (= x_1949 x_1950))) (forall ( (x_1951 Int) ) (= (mem0 x_1951 g_S1_0) (exists ( (x_1952 Int) ) (mem2 x_1951 x_1952 x_1945)))) (forall ( (x_1953 Int) ) (=> (exists ( (x_1954 Int) ) (mem2 x_1954 x_1953 x_1945)) (and (>= x_1953 1) (<= x_1953 x_1943)))))) (forall ( (x_1955 Int) ) (=> (and (>= x_1955 1) (<= x_1955 x_1943)) (exists ( (x_1956 Int) ) (mem2 x_1956 x_1955 x_1944))))) (forall ( (x_1957 Int) (x_1958 Int) (x_1959 Int) ) (=> (and  (mem2 x_1958 x_1957 x_1944) (mem2 x_1959 x_1957 x_1944)) (= x_1958 x_1959))))) (<= 0 x_1943))))
(assert (forall ((x_1960 Int) ) (=> (exists ( (x_1961 (P (C Int Int))) ) (and (and (exists ( (x_1962 (P (C Int Int))) ) (and (forall ( (x_1963 Int) (x_1964 Int) ) (= (mem2 x_1964 x_1963 x_1962) (mem2 x_1964 x_1963 x_1961))) (forall ( (x_1965 Int) (x_1966 Int) (x_1967 Int) ) (=> (and  (mem2 x_1965 x_1966 x_1962) (mem2 x_1965 x_1967 x_1962)) (= x_1966 x_1967))) (forall ( (x_1968 Int) ) (= (mem0 x_1968 g_S2_1) (exists ( (x_1969 Int) ) (mem2 x_1968 x_1969 x_1962)))) (forall ( (x_1970 Int) ) (=> (exists ( (x_1971 Int) ) (mem2 x_1971 x_1970 x_1962)) (and (>= x_1970 1) (<= x_1970 x_1960)))))) (forall ( (x_1972 Int) ) (=> (and (>= x_1972 1) (<= x_1972 x_1960)) (exists ( (x_1973 Int) ) (mem2 x_1973 x_1972 x_1961))))) (forall ( (x_1974 Int) (x_1975 Int) (x_1976 Int) ) (=> (and  (mem2 x_1975 x_1974 x_1961) (mem2 x_1976 x_1974 x_1961)) (= x_1975 x_1976))))) (<= 1 x_1960))))
(assert (forall ((x_1977 Int) ) (=> (exists ( (x_1978 (P (C Int Int))) ) (and (and (exists ( (x_1979 (P (C Int Int))) ) (and (forall ( (x_1980 Int) (x_1981 Int) ) (= (mem2 x_1981 x_1980 x_1979) (mem2 x_1981 x_1980 x_1978))) (forall ( (x_1982 Int) (x_1983 Int) (x_1984 Int) ) (=> (and  (mem2 x_1982 x_1983 x_1979) (mem2 x_1982 x_1984 x_1979)) (= x_1983 x_1984))) (forall ( (x_1985 Int) ) (= (mem0 x_1985 g_S3_2) (exists ( (x_1986 Int) ) (mem2 x_1985 x_1986 x_1979)))) (forall ( (x_1987 Int) ) (=> (exists ( (x_1988 Int) ) (mem2 x_1988 x_1987 x_1979)) (and (>= x_1987 1) (<= x_1987 x_1977)))))) (forall ( (x_1989 Int) ) (=> (and (>= x_1989 1) (<= x_1989 x_1977)) (exists ( (x_1990 Int) ) (mem2 x_1990 x_1989 x_1978))))) (forall ( (x_1991 Int) (x_1992 Int) (x_1993 Int) ) (=> (and  (mem2 x_1992 x_1991 x_1978) (mem2 x_1993 x_1991 x_1978)) (= x_1992 x_1993))))) (<= 3 x_1977))))
(assert (forall ((x_1994 Int)(x_1995 Int) ) (=> (and (exists ( (x_1996 (P (C Int Int))) ) (and (and (exists ( (x_1997 (P (C Int Int))) ) (and (forall ( (x_1998 Int) (x_1999 Int) ) (= (mem2 x_1999 x_1998 x_1997) (mem2 x_1999 x_1998 x_1996))) (forall ( (x_2000 Int) (x_2001 Int) (x_2002 Int) ) (=> (and  (mem2 x_2000 x_2001 x_1997) (mem2 x_2000 x_2002 x_1997)) (= x_2001 x_2002))) (forall ( (x_2003 Int) ) (= (mem0 x_2003 g_S1_0) (exists ( (x_2004 Int) ) (mem2 x_2003 x_2004 x_1997)))) (forall ( (x_2005 Int) ) (=> (exists ( (x_2006 Int) ) (mem2 x_2006 x_2005 x_1997)) (and (>= x_2005 1) (<= x_2005 x_1994)))))) (forall ( (x_2007 Int) ) (=> (and (>= x_2007 1) (<= x_2007 x_1994)) (exists ( (x_2008 Int) ) (mem2 x_2008 x_2007 x_1996))))) (forall ( (x_2009 Int) (x_2010 Int) (x_2011 Int) ) (=> (and  (mem2 x_2010 x_2009 x_1996) (mem2 x_2011 x_2009 x_1996)) (= x_2010 x_2011))))) (exists ( (x_2012 (P (C Int Int))) ) (and (and (exists ( (x_2013 (P (C Int Int))) ) (and (forall ( (x_2014 Int) (x_2015 Int) ) (= (mem2 x_2015 x_2014 x_2013) (mem2 x_2015 x_2014 x_2012))) (forall ( (x_2016 Int) (x_2017 Int) (x_2018 Int) ) (=> (and  (mem2 x_2016 x_2017 x_2013) (mem2 x_2016 x_2018 x_2013)) (= x_2017 x_2018))) (forall ( (x_2019 Int) ) (= (mem0 x_2019 g_S2_1) (exists ( (x_2020 Int) ) (mem2 x_2019 x_2020 x_2013)))) (forall ( (x_2021 Int) ) (=> (exists ( (x_2022 Int) ) (mem2 x_2022 x_2021 x_2013)) (and (>= x_2021 1) (<= x_2021 x_1995)))))) (forall ( (x_2023 Int) ) (=> (and (>= x_2023 1) (<= x_2023 x_1995)) (exists ( (x_2024 Int) ) (mem2 x_2024 x_2023 x_2012))))) (forall ( (x_2025 Int) (x_2026 Int) (x_2027 Int) ) (=> (and  (mem2 x_2026 x_2025 x_2012) (mem2 x_2027 x_2025 x_2012)) (= x_2026 x_2027)))))) (<= x_1994 x_1995))))
(assert (forall ((x_2028 Int) ) (=> (and  (mem0 x_2028 g_S2_1) (forall ( (x_2029 Int) ) (=> (mem0 x_2029 g_S2_1) (<= x_2028 x_2029)))) (<= x_2028 3))))
(assert (forall ((x_2030 Int) ) (=> (and  (mem0 x_2030 g_S2_1) (forall ( (x_2031 Int) ) (=> (mem0 x_2031 g_S2_1) (>= x_2030 x_2031)))) (<= x_2030 1))))
(assert (forall ((x_2032 Int) ) (=> (and  (mem0 x_2032 g_S2_1) (forall ( (x_2033 Int) ) (=> (mem0 x_2033 g_S2_1) (<= x_2032 x_2033)))) (<= 1 x_2032))))
(assert (forall ((x_2034 Int) ) (=> (and  (mem0 x_2034 g_S2_1) (forall ( (x_2035 Int) ) (=> (mem0 x_2035 g_S2_1) (>= x_2034 x_2035)))) (<= 3 x_2034))))
(assert (forall ((x_2036 Int)(x_2037 Int) ) (=> (and (and  (mem0 x_2036 g_S1_0) (forall ( (x_2038 Int) ) (=> (mem0 x_2038 g_S1_0) (>= x_2036 x_2038)))) (and  (mem0 x_2037 g_S1_0) (forall ( (x_2039 Int) ) (=> (mem0 x_2039 g_S1_0) (<= x_2037 x_2039))))) (<= x_2036 x_2037))))
(assert (forall ((x_2040 Int) ) (=> (forall ((x_2041 Int) ) (=> (= x_2041 2) (mem2 x_2041 x_2040 g_rel1_3))) (<= x_2040 7))))
(assert (forall ((x_2042 Int) ) (=> (forall ((x_2043 Int) ) (=> (= x_2043 2) (mem2 x_2043 x_2042 g_rel1_3))) (<= 7 x_2042))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2044 Int) ) (=> (forall ((x_2045 Int) ) (=> (= x_2045 1) (mem2 x_2045 x_2044 g_fun1_4))) (<= x_2044 3)))))
(check-sat)
(exit)
