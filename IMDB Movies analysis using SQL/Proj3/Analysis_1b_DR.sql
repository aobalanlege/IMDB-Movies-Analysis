set echo on
set timing on

--Query to count total number of movies in comedy from 1952-1962 from actress Debbie Reynolds:

SELECT COUNT(TB.startyear) AS first_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0001666' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Comedy%' AND
        TB.startyear between '1952' and '1962';

--Query to count total number of movies in comedy from 1963-1973 from actress Debbie Reynolds:

SELECT COUNT(TB.startyear) AS second_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0001666' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Comedy%' AND
        TB.startyear between '1963' and '1973';
        
--Query to count total number of movies in comedy from 1974-1984 from actress Debbbie Reynolds:
        
SELECT COUNT(TB.startyear) AS third_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0001666' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Comedy%' AND
        TB.startyear between '1974' and '1984';

--Query to count total number of movies in comedy from 1985-1995 from actress Debbie Reynolds:

SELECT COUNT(TB.startyear) AS fourth_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0001666' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Comedy%' AND
        TB.startyear between '1985' and '1995';

--Query to count total number of movies in comedy from 1996-2008 from actress Debbie Reynolds:

SELECT COUNT(TB.startyear) AS fourth_period
FROM imdb00.title_principals TP, imdb00.title_basics TB
WHERE TP.tconst = TB.tconst AND
        TP.nconst = 'nm0001666' AND
        LOWER(TP.category) IN ('actress') and TB.startyear NOT LIKE '\N' AND
        LOWER(TB.titletype) = 'movie' AND
        TB.genres like '%Comedy%' AND
        TB.startyear between '1996' and '2008';

set timing off
set echo off

