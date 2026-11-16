/* Program Data Vecor =PDV */
DATA STAFF;
INFILE '/home/u61735472/BATCH_202203/A3.SESSION-3/RAW DATA/A4.FlatFile/A11.STAFF_PDV.txt' ;
INPUT LAST_NAME $ 1-20 FIRST_NAME $ 21-30 EMP_CODE $ 31-35 JOBTITLE $ 36-43 DOJ SALARY 54-59;
INFORMAT DOJ MMDDYY8.;
FORMAT DOJ MMDDYY10.;
RUN;
PROC PRINT DATA=STAFF;RUN;


DATA STAFF;
INFILE '/home/u61735472/BATCH_202203/A3.SESSION-3/RAW DATA/A4.FlatFile/A11.STAFF_PDV.txt' DSD MISSOVER;
INPUT LAST_NAME $ 1-20 FIRST_NAME $ 21-30 EMP_CODE $ 31-35 JOBTITLE $ 36-43 DOJ SALARY 54-59;
INFORMAT DOJ MMDDYY8.;
FORMAT DOJ MMDDYY10.;
RUN;
PROC PRINT DATA=STAFF;RUN;

/* SAS CODE RUNS IN 2 STAEPS */
/* 1. COMPILATION 2. EXECUTION */

/* DURING COMPILATION IF SAS GETS ANY ERROR THEN IT THROWS ERROR AT LOG WINDOW */
 
/*
The program data vector (PDV) is a logical area of memory where SAS builds a data set, 
one observation at a time. When a program executes, SAS reads data values from the input buffer
or creates them by executing SAS language statements. 
SAS assigns the values to the appropriate variables in the program data vector. 
From here, SAS writes the values to a SAS data set as a single observation.

The program data vector also contains two automatic variables, N and ERROR. 
The N variable counts the number of times the DATA step begins to iterate. 
The ERROR variable signals the occurrence of an error caused by the data during execution. 
These automatic variables are not written to the output data set.

*/













































































































