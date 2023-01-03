spool analysis_1a.txt
set echo on
set timing on

column column_name format a15
set linesize 200
set underline =

--Queries to get span of acting career in years, and the total number of movies in each year of actor Tom Hanks:

SELECT NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        NB.nconst = 'nm0000158' AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') and TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY startyear ASC;

--Queries to get span of acting career in years, and the total number of movies in each year of actor Keanu Reeves:

SELECT NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        NB.nconst = 'nm0000206' AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') and TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY startyear ASC;

--Queries to get span of acting career in years, and the total number of movies in each year of actress Demi Moore

SELECT NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        NB.nconst = 'nm0000193' AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY startyear ASC;

--Queries to get span of acting career in years, and the total number of movies in each year of actress Debbie Reynolds:

SELECT NB.primaryname||','||TB.startyear||','||COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        NB.nconst = 'nm0001666' AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY startyear ASC;

set timing off
set echo off
spool off