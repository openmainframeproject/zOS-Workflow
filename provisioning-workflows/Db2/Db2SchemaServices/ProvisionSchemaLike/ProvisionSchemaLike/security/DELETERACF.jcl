//RACFAU   EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(EVEN)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD *
  DELUSER ${instance-RACFUSER}
  DELGROUP ${instance-RACFGROUP}
  RDELETE DSNADM ${instance-MVSSNAME}. -
   ${instance-DBNAME}*.DBADM

  SETR RACLIST(DSNADM) REFRESH
  SETR GENERIC(DSNADM) REFRESH