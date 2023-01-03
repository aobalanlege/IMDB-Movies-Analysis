set echo on
set timing on

-- Query to find the maximum number of movies made by an actress from 1991-2000:

SELECT NB.nconst||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the maximum number of movies made by an actor from 1991-2000:

SELECT NB.nconst||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname
ORDER BY COUNT(*) DESC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the maximum number of movies made by an actress in a particular year from 1991-2000:

SELECT NB.nconst||','||TB.startyear||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY COUNT(*) DESC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the maximum number of movies made by an actor in a particular year from 1991-2000:

SELECT NB.nconst||','||TB.startyear||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
ORDER BY COUNT(*) DESC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the minimum number of movies made by an actress in an earliest year from 1991-2000:
-- (Set the minimum number of movies 4 to avoid large number of data)

SELECT NB.nconst||','||NB.primaryname||','||TB.startyear||','|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
        HAVING COUNT(*) = 4
ORDER BY TB.startyear ASC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the minimum number of movies made by an actress in a lastest year from 1991-2000:
-- (Set the minimum number of movies 4)

SELECT NB.nconst||','||TB.startyear||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actress') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
        HAVING COUNT(*) = 4
ORDER BY TB.startyear DESC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the minimum number of movies made by an actor in a earliest year from 1991-2000:
-- (Set the minimum number of movies 4)

SELECT NB.nconst||','||TB.startyear||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
        HAVING COUNT(*) = 4
ORDER BY TB.startyear ASC
FETCH FIRST 3 ROWS ONLY;

-- Query to find the minimum number of movies made by an actor in a lastest year from 1991-2000:
-- (Set the minimum number of movies 4)

SELECT NB.nconst||','||TB.startyear||','||NB.primaryname||' , '|| COUNT(*)
FROM imdb00.name_basics NB, imdb00.title_principals TP, imdb00.title_basics TB
WHERE NB.nconst = TP.nconst AND
        TP.tconst = TB.tconst AND
        LOWER(TB.titletype) = 'movie' AND
        LOWER(TP.category) IN ('actor') AND
        TB.startyear NOT LIKE '\N' AND
        TB.startyear BETWEEN '1991' AND '2000'
GROUP BY NB.nconst, NB.primaryname, TB.startyear
        HAVING COUNT(*) = 4
ORDER BY TB.startyear DESC
FETCH FIRST 3 ROWS ONLY;


set timing off
set echo off