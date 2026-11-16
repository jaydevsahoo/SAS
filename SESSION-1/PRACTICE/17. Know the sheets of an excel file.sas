FILENAME xlfile ZIP "/home/u61735472/BATCH_202203/A1.SESSION-1/RAW DATA/MED_2021.xlsx" MEMBER="xl/workbook.xml";

DATA _NULL_;
   INFILE xlfile LRECL=32767 SCANOVER TRUNCOVER;
   INPUT @'<sheet name="' sheet_name :$50. @;
   sheet_name = SCAN(sheet_name, 1, '"');
   PUT sheet_name;
RUN;

FILENAME xlfile CLEAR;