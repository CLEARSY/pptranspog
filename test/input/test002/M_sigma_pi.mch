/* M_sigma_pi
 * Author: David DEHARBE
 * Creation date: 24/07/2024
 */
MACHINE
    M_sigma_pi
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
    SIGMA(val).(val: S1| val) = 0;
    SIGMA(val).(val: S2| val) = 1;
    SIGMA(val).(val: S3| val) = 6;
    PI(val).(val: S1| val) = 1;
    PI(val).(val: S2| val) = 1;
    PI(val).(val: S3| val) = 6    
END
