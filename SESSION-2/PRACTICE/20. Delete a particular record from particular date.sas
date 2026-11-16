options validvarname=v7;
proc import out=med
			datafile='/home/u61735472/Practice/RAW DATA/dummy.xlsx'
			dbms=xlsx replace;
run;	

data med;
set med;
IF DATE='17MAY2023'D and TAB=3 then DELETE;
run;






		