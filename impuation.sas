
proc import datafile="M:\\RESPOND\\2010\\CT\\all_statesCT_omitNA.csv"
out=ex7_CPIC
dbms=csv
replace;
run;

proc mi data=Rdata
        out=imNABG_HI_2012 seed=2013 NIMPUTE=1;
  var Poverty Education_Index Median_HHI Median_Rent Median_hv employment Blue_Collarupdated;
  BY state;
  run;




