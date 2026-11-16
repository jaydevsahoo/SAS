OPTION VALIDVARNAME=V7;
PROC IMPORT OUT=MED
			DATAFILE='/home/u61735472/BATCH_202203/A5.SESSION-5/RAW DATA/A2.MED_2020.xlsx'
			DBMS=XLSX REPLACE;
			SHEET='MED_New_2016';
RUN;			
/*
In SAS, the LAG function is used to compare the current value to its predecessors.
If you want to calculate lag of second order, use LAG2 function. 
Similarly, you can use LAG3 function for measuring lag of third order.
*/
data example;
input id NUMS;
cards;
1 25
1 30
1 35
1 40
2 25
2 30
2 37
;
run;

DATA X;
SET EXAMPLE;
LAG1_VALUE=LAG(NUMS);
LAG2_VALUE=LAG2(NUMS);
RUN;

































