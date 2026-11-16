libname lib '/home/u61735472/BATCH_202203/A2.SESSION-2/DATASET';run;

libname outfile xlsx "/home/u61735472/Practice/Exports/File.xlsx";

proc copy in=lib out=outfile;
run;

libname outfile;

PROC DATASETS LIBRARY=outfile KILL;
RUN;



