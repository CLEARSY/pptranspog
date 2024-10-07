MACHINE M_card
ABSTRACT_CONSTANTS
    S1, S2, S3
PROPERTIES
    S1 <: INTEGER &
    S2 <: INTEGER &
    S3 <: INTEGER &
    S1 = {} &
    S2 = {1} &
    S3 = {1,2,3}
ASSERTIONS
    card(S1) = 0;
    card(S2) = 1;
    card(S3) = 3;
    0 = card(S1);
    1 = card(S2);
    3 = card(S3)
END
