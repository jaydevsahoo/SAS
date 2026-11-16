/* IMPORTING FROM EXCEL FILE */
OPTION VALIDVARNAME=V7;
PROC IMPORT OUT=SSN1.MED_2022_EXL
			DATAFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/MED_2021.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='MED_AUSTRALIA';
RUN;			

/* EXPORTING EXCEL FILE */
OPTION VALIDVARNAME=V7;
PROC EXPORT DATA=SSN1.STAFF
			OUTFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/OUTPUT/staff.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='EXPORT_1';
RUN;

/* IMPORTING DATA FROM TEXT FILE */
OPTION VALIDVARNAME=V7;
PROC IMPORT OUT=SSN1.MED_2022_TXT
			DATAFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/MED_2021.txt'
			DBMS=DLM REPLACE;
			DELIMITER='|' ;
RUN;			

data SSN1.MED_2022_TXT_V1    ;
%let _EFIERR_ = 0; /* set the ERROR detection macro variable */
infile '/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/MED_2021.txt' delimiter = '|' MISSOVER DSD lrecl=32767 firstobs=2 ;
informat CUSTOMER_ID best32. ;
informat Company $9. ;
informat CARD_REG_DATE anydtdtm40. ;
informat CARD_ACTIVE $1. ;
informat FIRST_USE_DTE anydtdtm40. ;
informat firstSTOR best32. ;
informat TITLE $4. ;
informat GENDER $6. ;
informat max_spent best32. ;
informat DOB ddmmyy10. ;
informat FTD anydtdtm40. ;
informat Age best32. ;
informat STATE_CODE $3. ;
informat POST_CODE best32. ;
informat CUST_STAT $6. ;
informat Avgsize_spent best32. ;
informat CARD_STAT $10. ;
informat RGSTN_TYPE_IND $6. ;
informat NO_OF_TRIPS best32. ;
informat TOWN $14. ;
informat EMAIL_IND $1. ;
informat CONTACT_PREF $5. ;
informat Average_Qty_PER_ACC best32. ;
informat Spent_amount best32. ;
format CUSTOMER_ID best12. ;
format Company $9. ;
format CARD_REG_DATE datetime. ;
format CARD_ACTIVE $1. ;
format FIRST_USE_DTE datetime. ;
format firstSTOR best12. ;
format TITLE $4. ;
format GENDER $6. ;
format max_spent best12. ;
format DOB ddmmyy10. ;
format FTD datetime. ;
format Age best12. ;
format STATE_CODE $3. ;
format POST_CODE best12. ;
format CUST_STAT $6. ;
format Avgsize_spent best12. ;
format CARD_STAT $10. ;
format RGSTN_TYPE_IND $6. ;
format NO_OF_TRIPS best12. ;
format TOWN $14. ;
format EMAIL_IND $1. ;
format CONTACT_PREF $5. ;
format Average_Qty_PER_ACC best12. ;
format Spent_amount best12. ;
input
CUSTOMER_ID
Company  $
CARD_REG_DATE
CARD_ACTIVE  $
FIRST_USE_DTE
firstSTOR
TITLE  $
GENDER  $
max_spent
DOB
FTD
Age
STATE_CODE  $
POST_CODE
CUST_STAT  $
Avgsize_spent
CARD_STAT  $
RGSTN_TYPE_IND  $
NO_OF_TRIPS
TOWN  $
EMAIL_IND  $
CONTACT_PREF  $
Average_Qty_PER_ACC
Spent_amount
;
run;



/* SAS SEQUENCE  */
/* 1. DATA STATEMENT */
/* 2. INFILE STATEMENT */
/* 3. INFORMAT STATEMENT */
/* 4. FORMAT STATEMENT */
/* 5. INPUT STATEMENT */
/* 6. RUN STATEMENT */


/* EXPORT TXT FILE */
OPTION VALIDVARNAME=V7;
PROC EXPORT DATA=SSN1.med_2022_txt
			OUTFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/OUTPUT/MED_2022_TXT.txt'
			DBMS=DLM REPLACE;
			DELIMITER=',';
RUN;

/* IMPORTING FROM CSV FILE */
OPTION VALIDVARNAME=V7;
PROC IMPORT OUT=SSN1.MED_2022_CSV
			DATAFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/MED_2021.csv'
			DBMS=CSV REPLACE;
RUN;			


/* EXPORTING TO CSV FILE */
OPTION VALIDVARNAME=V7;
PROC EXPORT DATA=SSN1.MED_2022_CSV
			OUTFILE='/home/u61735472/BATCH_202203/A1.SESSION-1/OUTPUT/MED_2022_CSV.csv'
			DBMS=CSV REPLACE;
RUN;			




































































