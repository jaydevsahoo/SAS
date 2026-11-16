/*
1.  ARRAY ABC[5] a b c d e; 

In the example above, ABC is an array-name, 5 implies the number of variables in array and "a b c d e" are the fields that make up the array.

2. ARRAY ABC[*] a b c d e; 

In the example above, SAS would automatically calculate the number of variables in array.

3. ARRAY ABC[*] X1-X10;

Where the X1 variable contains the X1 value, X2 contains the X2 value, etc.

4. ARRAY ABC[*]  $ X1-X10;
If the variables are of character type then use $ sign before specifying list of variables.

*/

DATA TAB;
INPUT X1 X2 X3 X4 $ X5 $;
CARDS;
1 2 3 AA BB
2 3 4 AB CC
3 4 5 AC DD
4 5 6 AD EE
5 6 7 AE FF
6 7 8 AF GG
;
RUN;
PROC PRINT DATA=TAB;RUN;

/* Q. Numeric variables having values GT 3 are to be replaced by N/A ? */
DATA TAB1;
SET TAB;
ARRAY AR[*] X1-X3;
DO I=1 TO 3;
IF AR[I]>3 THEN AR[I]=.;
END;
DROP I;
RUN;
PROC PRINT DATA=TAB1;RUN;

/* OR */

DATA TAB2;
SET TAB;
ARRAY AR[*] _NUMERIC_;
DO I=1 TO DIM(AR);
IF AR[I]>3 THEN AR[I]=.;
END;
DROP I;
RUN;
PROC PRINT DATA=TAB2;RUN;

/* Q. Extract first letter of all char variables? */

DATA TAB3;
SET TAB;
ARRAY AR[*] _CHARACTER_;
DO I=1 TO DIM(AR);
AR[I]=SUBSTR(AR[I],1,1);
END; 
DROP I;
RUN;
PROC PRINT DATA=TAB3;RUN;

/* Q. Extract 1st char and put them in new char variable? */

DATA TAB4;
SET TAB;
ARRAY AR1[*] _CHARACTER_;
ARRAY AR2[*] $X6 X7 ;
DO I=1 TO DIM(AR1);
AR2[I]=SUBSTR(AR1[I],2,1);
END;
RUN;
PROC PRINT DATA=TAB4;RUN;

/* Q. Extract all the char and put them into diff column? */

/*
DATA TAB5;
SET TAB;
ARRAY AR1[*] _CHARACTER_;
ARRAY AR2[*] $ X6 X7 X8 X9;
DO I=1 TO DIM(AR2);
 DO J=1 TO DIM(AR1);
  AR2[I]=SUBSTR(AR1[I],J,1);
 END;
END; 
RUN;
PROC PRINT DATA=TAB5;RUN;
*/



















