/*
INFILE->INFILE is a statement which will allow us to import and read an external file data to sas enviroment.
FILE->FILE is a statement which will allow us to export and write data into an external file.
*/
DATA test;
INFILE "/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/a1.EMPLIST FM.txt";
INPUT LAST_NAME $ 1-20 FIRST_NAME $ 21-30 ID $ 31-35 DESIGNATION $ 36-43 DOJ SALARY 54-59;
INFORMAT DOJ MMDDYY8.;
FORMAT DOJ MMDDYY10. SALARY DOLLAR12.;
RUN;


DATA NULL;
SET test;
FILE '/home/u61735472/BATCH_202203/A1.SESSION-1/OUTPUT/FILE.txt' DSD  ;
PUT LAST_NAME $ 1-20 FIRST_NAME $ 21-30 ID $ 31-35 DESIGNATION $ 36-43 DOJ SALARY 54-59;
RUN;















