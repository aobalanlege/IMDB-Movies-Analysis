SQL> set echo on
SQL> set timing on
SQL> 
SQL> column column_name format a15
SQL> set linesize 200
SQL> set underline =
SQL> 
SQL> --Queries to find the NCONST of 2 actors and 2 actresses:
SQL> 
SQL> SELECT NCONST||','||primaryname
  2  FROM imdb00.name_basics
  3  WHERE Lower(primaryname) LIKE '%tom hanks%'
  4  	OR Lower(primaryname) LIKE '%debbie reynolds%'
  5  	OR Lower(primaryname) LIKE '%keanu reeves%'
  6  	OR Lower(primaryname) LIKE '%demi moore%';

NCONST||','||PRIMARYNAME                                                                                                                                                                                
========================================================================================================================================================================================================
nm0000158,Tom Hanks                                                                                                                                                                                     
nm0000193,Demi Moore                                                                                                                                                                                    
nm0000206,Keanu Reeves                                                                                                                                                                                  
nm0001666,Debbie Reynolds                                                                                                                                                                               
nm0721683,Debbie Reynolds                                                                                                                                                                               
nm0721684,Debbie Reynolds                                                                                                                                                                               
nm1448763,Debbie Reynolds                                                                                                                                                                               
nm3459353,Debbie Reynolds                                                                                                                                                                               
nm4322061,Debbie Reynolds                                                                                                                                                                               
nm7021201,Debbie Reynolds                                                                                                                                                                               

10 rows selected.

Elapsed: 00:00:11.90
SQL> set timing off
SQL> set echo off
SQL> spool off
