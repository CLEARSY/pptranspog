(set-option :print-success false)
(set-logic ALL)
; PO 0 0
; Group AssertionLemmas
; Tag Assertion is verified
; Prelude
(declare-sort P 1)
(declare-fun mem0 (Int (P Int)) Bool)
(define-fun MinInt () Int (- 2147483648))
(define-fun MaxInt () Int 2147483647)
; Global declarations
(declare-fun g_BEL_6 () Int)
(declare-fun g_COUNTRY_5 () (P Int))
(declare-fun g_DEU_7 () Int)
(declare-fun g_ESP_9 () Int)
(declare-fun g_FRA_8 () Int)
(declare-fun g_GBR_10 () Int)
(declare-fun g_LANG_0 () (P Int))
(declare-fun g_country_13 () Int)
(declare-fun g_de_1 () Int)
(declare-fun g_en_2 () Int)
(declare-fun g_es_3 () Int)
(declare-fun g_fr_4 () Int)
(declare-fun g_lang1_11 () Int)
(declare-fun g_lang2_12 () Int)
; Defines
(assert (and (forall ( (x_3 Int) ) (= (mem0 x_3 g_LANG_0) (or  (= x_3 g_de_1) (= x_3 g_en_2) (= x_3 g_es_3) (= x_3 g_fr_4)))) (distinct g_de_1 g_en_2 g_es_3 g_fr_4)))
(assert (and (forall ( (x_4 Int) ) (= (mem0 x_4 g_COUNTRY_5) (or  (= x_4 g_BEL_6) (= x_4 g_DEU_7) (= x_4 g_FRA_8) (= x_4 g_ESP_9) (= x_4 g_GBR_10)))) (distinct g_BEL_6 g_DEU_7 g_FRA_8 g_ESP_9 g_GBR_10)))
(assert (mem0 g_lang1_11 g_LANG_0))
(assert (mem0 g_lang2_12 g_LANG_0))
(assert (mem0 g_country_13 g_COUNTRY_5))
; Global hypotheses
; Local hypotheses
; Goal
(assert (not (= g_lang1_11 g_lang2_12)))
(check-sat)
(exit)
