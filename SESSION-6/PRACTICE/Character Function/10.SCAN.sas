DATA SCAN1;
NAME='A,B,C,D';
NAME1=SCAN(NAME,1,',');
NAME2=SCAN(NAME,2,',');
NAME3=SCAN(NAME,3,',');
NAME4=SCAN(NAME,4,',');
RUN;
PROC PRINT;RUN;


DATA SCAN1;
NAME='A:B,C-D/E#R@X';
NAME1=SCAN(NAME,1,'/');
NAME2=SCAN(NAME,1,'/@');
/*
I.   WHEN 1,'/@' THEN BEFORE '/@' WHATEVER IS THERE,WILL BE THE O/P.
II.  WHEN 2,'/@' THEN IN BETWEEN / & @ WHATEVER IS THERE,WILL BE THE O/P.
III. WHEN 3,'/@' THEN AFTER @ WHATEVER IS THERE,WILL BE THE O/P.
*/
NAME3=SCAN(NAME,2,'/@');
NAME4=SCAN(NAME,3,'/@');
NAME5=SCAN(NAME,2,',#');
NAME6=SCAN(NAME,3,',#');
NAME7=SCAN(NAME,2,'@');
NAME8=SCAN(NAME,1,'@');
RUN;
PROC PRINT;RUN;

/* INTV QUESTION
/*
WHAT IS DIFF B/W SUBSTR() AND SCAN()?
ANS-Substring will extract a part of the string specifying a starting location and length.
where as Scan() will extract the words that are separated by delimiteres
*/






















