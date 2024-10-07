/* M_enum
 * Author: 
 * Creation date: 27/09/2024
 */
MACHINE
    M_enum
SETS
    LANG = { de, en, es, fr };
    COUNTRY = { BEL, DEU, FRA, ESP, GBR }
CONSTANTS
    lang1, lang2, country
PROPERTIES
    lang1 : LANG &
    lang2 : LANG &
    country : COUNTRY
ASSERTIONS
    lang1 = lang2
END
