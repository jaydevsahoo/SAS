data _null_;
   begin = time();
   put begin tod9.;
run;

%let date1=%sysfunc(date(),date9.);
%put &date1.;
%let time1=%sysfunc(time(),tod9.);
%put &time1.;

options dlcreatedir; 
libname newdir "/home/u61735472/Practice2/&&DATE1._&TIME1./";
















































