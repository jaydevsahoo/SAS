libname myFiles XLSX '/home/u61735472/BATCH_202203/A8.SAS_MACRO/RAW_DATA/A2.TELECOM YEARLY USAGE DATA.xlsx';

proc copy in=myFiles out=WORK;
run;quit;

libname myFiles;

PROC DATASETS LIBRARY=myFiles KILL;
RUN;
			






