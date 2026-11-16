DATA MED_2022_V1;
SET SSN1.med_2022_exl; /* will create MED_2022_V1 from med_2022_exl in WORK lib*/

DATA SSN1.STAFF_V1;
SET SSN1.staff;

PROC CONTENTS DATA=SSN1._ALL_ NODS;
RUN;

























































