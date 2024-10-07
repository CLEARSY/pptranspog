(set-option :print-success false)
(set-logic ALL)
; PO 21 0
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
(assert (forall ((x_2046 (P Int)) ) (=> (forall ( (x_2047 Int) ) (= (mem0 x_2047 x_2046) (exists ( (x_2048 Int) ) (and  (mem0 x_2048 g_S1_0) (= x_2047 x_2048))))) (>= (isum x_2046) 0))))
(assert (forall ((x_2049 (P Int)) ) (=> (forall ( (x_2050 Int) ) (= (mem0 x_2050 x_2049) (exists ( (x_2051 Int) ) (and  (mem0 x_2051 g_S2_1) (= x_2050 x_2051))))) (>= (isum x_2049) 1))))
(assert (forall ((x_2052 (P Int)) ) (=> (forall ( (x_2053 Int) ) (= (mem0 x_2053 x_2052) (exists ( (x_2054 Int) ) (and  (mem0 x_2054 g_S3_2) (= x_2053 x_2054))))) (>= (isum x_2052) 6))))
(assert (forall ((x_2055 (P Int)) ) (=> (forall ( (x_2056 Int) ) (= (mem0 x_2056 x_2055) (exists ( (x_2057 Int) ) (and  (mem0 x_2057 g_S1_0) (= x_2056 x_2057))))) (>= (iprod x_2055) 1))))
(assert (forall ((x_2058 (P Int)) ) (=> (forall ( (x_2059 Int) ) (= (mem0 x_2059 x_2058) (exists ( (x_2060 Int) ) (and  (mem0 x_2060 g_S2_1) (= x_2059 x_2060))))) (>= (iprod x_2058) 1))))
(assert (forall ((x_2061 (P Int)) ) (=> (forall ( (x_2062 Int) ) (= (mem0 x_2062 x_2061) (exists ( (x_2063 Int) ) (and  (mem0 x_2063 g_S3_2) (= x_2062 x_2063))))) (>= (iprod x_2061) 6))))
(assert (forall ((x_2064 Int) ) (=> (exists ( (x_2065 (P (C Int Int))) ) (and (and (exists ( (x_2066 (P (C Int Int))) ) (and (forall ( (x_2067 Int) (x_2068 Int) ) (= (mem2 x_2068 x_2067 x_2066) (mem2 x_2068 x_2067 x_2065))) (forall ( (x_2069 Int) (x_2070 Int) (x_2071 Int) ) (=> (and  (mem2 x_2069 x_2070 x_2066) (mem2 x_2069 x_2071 x_2066)) (= x_2070 x_2071))) (forall ( (x_2072 Int) ) (= (mem0 x_2072 g_S1_0) (exists ( (x_2073 Int) ) (mem2 x_2072 x_2073 x_2066)))) (forall ( (x_2074 Int) ) (=> (exists ( (x_2075 Int) ) (mem2 x_2075 x_2074 x_2066)) (and (>= x_2074 1) (<= x_2074 x_2064)))))) (forall ( (x_2076 Int) ) (=> (and (>= x_2076 1) (<= x_2076 x_2064)) (exists ( (x_2077 Int) ) (mem2 x_2077 x_2076 x_2065))))) (forall ( (x_2078 Int) (x_2079 Int) (x_2080 Int) ) (=> (and  (mem2 x_2079 x_2078 x_2065) (mem2 x_2080 x_2078 x_2065)) (= x_2079 x_2080))))) (>= x_2064 0))))
(assert (forall ((x_2081 Int) ) (=> (exists ( (x_2082 (P (C Int Int))) ) (and (and (exists ( (x_2083 (P (C Int Int))) ) (and (forall ( (x_2084 Int) (x_2085 Int) ) (= (mem2 x_2085 x_2084 x_2083) (mem2 x_2085 x_2084 x_2082))) (forall ( (x_2086 Int) (x_2087 Int) (x_2088 Int) ) (=> (and  (mem2 x_2086 x_2087 x_2083) (mem2 x_2086 x_2088 x_2083)) (= x_2087 x_2088))) (forall ( (x_2089 Int) ) (= (mem0 x_2089 g_S2_1) (exists ( (x_2090 Int) ) (mem2 x_2089 x_2090 x_2083)))) (forall ( (x_2091 Int) ) (=> (exists ( (x_2092 Int) ) (mem2 x_2092 x_2091 x_2083)) (and (>= x_2091 1) (<= x_2091 x_2081)))))) (forall ( (x_2093 Int) ) (=> (and (>= x_2093 1) (<= x_2093 x_2081)) (exists ( (x_2094 Int) ) (mem2 x_2094 x_2093 x_2082))))) (forall ( (x_2095 Int) (x_2096 Int) (x_2097 Int) ) (=> (and  (mem2 x_2096 x_2095 x_2082) (mem2 x_2097 x_2095 x_2082)) (= x_2096 x_2097))))) (>= x_2081 1))))
(assert (forall ((x_2098 Int) ) (=> (exists ( (x_2099 (P (C Int Int))) ) (and (and (exists ( (x_2100 (P (C Int Int))) ) (and (forall ( (x_2101 Int) (x_2102 Int) ) (= (mem2 x_2102 x_2101 x_2100) (mem2 x_2102 x_2101 x_2099))) (forall ( (x_2103 Int) (x_2104 Int) (x_2105 Int) ) (=> (and  (mem2 x_2103 x_2104 x_2100) (mem2 x_2103 x_2105 x_2100)) (= x_2104 x_2105))) (forall ( (x_2106 Int) ) (= (mem0 x_2106 g_S3_2) (exists ( (x_2107 Int) ) (mem2 x_2106 x_2107 x_2100)))) (forall ( (x_2108 Int) ) (=> (exists ( (x_2109 Int) ) (mem2 x_2109 x_2108 x_2100)) (and (>= x_2108 1) (<= x_2108 x_2098)))))) (forall ( (x_2110 Int) ) (=> (and (>= x_2110 1) (<= x_2110 x_2098)) (exists ( (x_2111 Int) ) (mem2 x_2111 x_2110 x_2099))))) (forall ( (x_2112 Int) (x_2113 Int) (x_2114 Int) ) (=> (and  (mem2 x_2113 x_2112 x_2099) (mem2 x_2114 x_2112 x_2099)) (= x_2113 x_2114))))) (>= x_2098 3))))
(assert (forall ((x_2115 Int) ) (=> (exists ( (x_2116 (P (C Int Int))) ) (and (and (exists ( (x_2117 (P (C Int Int))) ) (and (forall ( (x_2118 Int) (x_2119 Int) ) (= (mem2 x_2119 x_2118 x_2117) (mem2 x_2119 x_2118 x_2116))) (forall ( (x_2120 Int) (x_2121 Int) (x_2122 Int) ) (=> (and  (mem2 x_2120 x_2121 x_2117) (mem2 x_2120 x_2122 x_2117)) (= x_2121 x_2122))) (forall ( (x_2123 Int) ) (= (mem0 x_2123 g_S1_0) (exists ( (x_2124 Int) ) (mem2 x_2123 x_2124 x_2117)))) (forall ( (x_2125 Int) ) (=> (exists ( (x_2126 Int) ) (mem2 x_2126 x_2125 x_2117)) (and (>= x_2125 1) (<= x_2125 x_2115)))))) (forall ( (x_2127 Int) ) (=> (and (>= x_2127 1) (<= x_2127 x_2115)) (exists ( (x_2128 Int) ) (mem2 x_2128 x_2127 x_2116))))) (forall ( (x_2129 Int) (x_2130 Int) (x_2131 Int) ) (=> (and  (mem2 x_2130 x_2129 x_2116) (mem2 x_2131 x_2129 x_2116)) (= x_2130 x_2131))))) (>= 0 x_2115))))
(assert (forall ((x_2132 Int) ) (=> (exists ( (x_2133 (P (C Int Int))) ) (and (and (exists ( (x_2134 (P (C Int Int))) ) (and (forall ( (x_2135 Int) (x_2136 Int) ) (= (mem2 x_2136 x_2135 x_2134) (mem2 x_2136 x_2135 x_2133))) (forall ( (x_2137 Int) (x_2138 Int) (x_2139 Int) ) (=> (and  (mem2 x_2137 x_2138 x_2134) (mem2 x_2137 x_2139 x_2134)) (= x_2138 x_2139))) (forall ( (x_2140 Int) ) (= (mem0 x_2140 g_S2_1) (exists ( (x_2141 Int) ) (mem2 x_2140 x_2141 x_2134)))) (forall ( (x_2142 Int) ) (=> (exists ( (x_2143 Int) ) (mem2 x_2143 x_2142 x_2134)) (and (>= x_2142 1) (<= x_2142 x_2132)))))) (forall ( (x_2144 Int) ) (=> (and (>= x_2144 1) (<= x_2144 x_2132)) (exists ( (x_2145 Int) ) (mem2 x_2145 x_2144 x_2133))))) (forall ( (x_2146 Int) (x_2147 Int) (x_2148 Int) ) (=> (and  (mem2 x_2147 x_2146 x_2133) (mem2 x_2148 x_2146 x_2133)) (= x_2147 x_2148))))) (>= 1 x_2132))))
(assert (forall ((x_2149 Int) ) (=> (exists ( (x_2150 (P (C Int Int))) ) (and (and (exists ( (x_2151 (P (C Int Int))) ) (and (forall ( (x_2152 Int) (x_2153 Int) ) (= (mem2 x_2153 x_2152 x_2151) (mem2 x_2153 x_2152 x_2150))) (forall ( (x_2154 Int) (x_2155 Int) (x_2156 Int) ) (=> (and  (mem2 x_2154 x_2155 x_2151) (mem2 x_2154 x_2156 x_2151)) (= x_2155 x_2156))) (forall ( (x_2157 Int) ) (= (mem0 x_2157 g_S3_2) (exists ( (x_2158 Int) ) (mem2 x_2157 x_2158 x_2151)))) (forall ( (x_2159 Int) ) (=> (exists ( (x_2160 Int) ) (mem2 x_2160 x_2159 x_2151)) (and (>= x_2159 1) (<= x_2159 x_2149)))))) (forall ( (x_2161 Int) ) (=> (and (>= x_2161 1) (<= x_2161 x_2149)) (exists ( (x_2162 Int) ) (mem2 x_2162 x_2161 x_2150))))) (forall ( (x_2163 Int) (x_2164 Int) (x_2165 Int) ) (=> (and  (mem2 x_2164 x_2163 x_2150) (mem2 x_2165 x_2163 x_2150)) (= x_2164 x_2165))))) (>= 3 x_2149))))
(assert (forall ((x_2166 Int)(x_2167 Int) ) (=> (and (exists ( (x_2168 (P (C Int Int))) ) (and (and (exists ( (x_2169 (P (C Int Int))) ) (and (forall ( (x_2170 Int) (x_2171 Int) ) (= (mem2 x_2171 x_2170 x_2169) (mem2 x_2171 x_2170 x_2168))) (forall ( (x_2172 Int) (x_2173 Int) (x_2174 Int) ) (=> (and  (mem2 x_2172 x_2173 x_2169) (mem2 x_2172 x_2174 x_2169)) (= x_2173 x_2174))) (forall ( (x_2175 Int) ) (= (mem0 x_2175 g_S1_0) (exists ( (x_2176 Int) ) (mem2 x_2175 x_2176 x_2169)))) (forall ( (x_2177 Int) ) (=> (exists ( (x_2178 Int) ) (mem2 x_2178 x_2177 x_2169)) (and (>= x_2177 1) (<= x_2177 x_2166)))))) (forall ( (x_2179 Int) ) (=> (and (>= x_2179 1) (<= x_2179 x_2166)) (exists ( (x_2180 Int) ) (mem2 x_2180 x_2179 x_2168))))) (forall ( (x_2181 Int) (x_2182 Int) (x_2183 Int) ) (=> (and  (mem2 x_2182 x_2181 x_2168) (mem2 x_2183 x_2181 x_2168)) (= x_2182 x_2183))))) (exists ( (x_2184 (P (C Int Int))) ) (and (and (exists ( (x_2185 (P (C Int Int))) ) (and (forall ( (x_2186 Int) (x_2187 Int) ) (= (mem2 x_2187 x_2186 x_2185) (mem2 x_2187 x_2186 x_2184))) (forall ( (x_2188 Int) (x_2189 Int) (x_2190 Int) ) (=> (and  (mem2 x_2188 x_2189 x_2185) (mem2 x_2188 x_2190 x_2185)) (= x_2189 x_2190))) (forall ( (x_2191 Int) ) (= (mem0 x_2191 g_S2_1) (exists ( (x_2192 Int) ) (mem2 x_2191 x_2192 x_2185)))) (forall ( (x_2193 Int) ) (=> (exists ( (x_2194 Int) ) (mem2 x_2194 x_2193 x_2185)) (and (>= x_2193 1) (<= x_2193 x_2167)))))) (forall ( (x_2195 Int) ) (=> (and (>= x_2195 1) (<= x_2195 x_2167)) (exists ( (x_2196 Int) ) (mem2 x_2196 x_2195 x_2184))))) (forall ( (x_2197 Int) (x_2198 Int) (x_2199 Int) ) (=> (and  (mem2 x_2198 x_2197 x_2184) (mem2 x_2199 x_2197 x_2184)) (= x_2198 x_2199)))))) (>= x_2166 x_2167))))
(assert (forall ((x_2200 Int) ) (=> (and  (mem0 x_2200 g_S2_1) (forall ( (x_2201 Int) ) (=> (mem0 x_2201 g_S2_1) (<= x_2200 x_2201)))) (>= x_2200 3))))
(assert (forall ((x_2202 Int) ) (=> (and  (mem0 x_2202 g_S2_1) (forall ( (x_2203 Int) ) (=> (mem0 x_2203 g_S2_1) (>= x_2202 x_2203)))) (>= x_2202 1))))
(assert (forall ((x_2204 Int) ) (=> (and  (mem0 x_2204 g_S2_1) (forall ( (x_2205 Int) ) (=> (mem0 x_2205 g_S2_1) (<= x_2204 x_2205)))) (>= 1 x_2204))))
(assert (forall ((x_2206 Int) ) (=> (and  (mem0 x_2206 g_S2_1) (forall ( (x_2207 Int) ) (=> (mem0 x_2207 g_S2_1) (>= x_2206 x_2207)))) (>= 3 x_2206))))
(assert (forall ((x_2208 Int)(x_2209 Int) ) (=> (and (and  (mem0 x_2208 g_S1_0) (forall ( (x_2210 Int) ) (=> (mem0 x_2210 g_S1_0) (>= x_2208 x_2210)))) (and  (mem0 x_2209 g_S1_0) (forall ( (x_2211 Int) ) (=> (mem0 x_2211 g_S1_0) (<= x_2209 x_2211))))) (>= x_2208 x_2209))))
(assert (forall ((x_2212 Int) ) (=> (forall ((x_2213 Int) ) (=> (= x_2213 2) (mem2 x_2213 x_2212 g_rel1_3))) (>= x_2212 7))))
(assert (forall ((x_2214 Int) ) (=> (forall ((x_2215 Int) ) (=> (= x_2215 2) (mem2 x_2215 x_2214 g_rel1_3))) (>= 7 x_2214))))
(assert (forall ((x_2216 Int) ) (=> (forall ((x_2217 Int) ) (=> (= x_2217 1) (mem2 x_2217 x_2216 g_fun1_4))) (>= x_2216 3))))
; Local hypotheses
; Goal
(assert (not (forall ((x_2218 Int) ) (=> (forall ((x_2219 Int) ) (=> (= x_2219 1) (mem2 x_2219 x_2218 g_fun1_4))) (>= 3 x_2218)))))
(check-sat)
(exit)
