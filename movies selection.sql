SELECT address FROM studio WHERE name = "MGM";

SELECT birthdate FROM moviestar WHERE name = "Sandra Bullock";

SELECT starname FROM starsin WHERE movieyear = 1980 AND movietitle LIKE '%Empire%';

SELECT name FROM movieexec WHERE networth > 10000000;

SELECT name FROM moviestar WHERE gender = 'M' OR address = "Prefect Rd.";