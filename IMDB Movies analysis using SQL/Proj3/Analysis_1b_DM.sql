set echo on
set timing on

--Query to count total number of movies in comedy from 1982-1990 from actress Demi Moore:

SELECT COUNT(TB.startyear) AS first_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0000193' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Drama%' AND
        TB.startyear between '1982' and '1990';

--Query to count total number of movies in comedy from 1991-2000 from actress Demi Moore:

SELECT COUNT(TB.startyear) AS second_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0000193' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Drama%' AND
        TB.startyear between '1991' and '2000';
        
--Query to count total number of movies in comedy from 2001-2010 from actress Demi Moore:
        
SELECT COUNT(TB.startyear) AS third_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0000193' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Drama%' AND
        TB.startyear between '2001' and '2010';

--Query to count total number of movies in comedy from 2011-2022 from actress Demi Moore:

SELECT COUNT(TB.startyear) AS fourth_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0000193' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Drama%' AND
        TB.startyear between '2011' and '2022';

set timing off
set echo off

