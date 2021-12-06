SELECT movie.TITLE, movieexec.NAME FROM movie JOIN movieexec ON (movie.`PRODUCERC#` = movieexec.`CERT#` AND movie.`PRODUCERC#` = (SELECT movie.`PRODUCERC#` FROM movie WHERE movie.TITLE = "Star Wars"));

SELECT DISTINCT movieexec.NAME FROM movieexec JOIN movie ON (movieexec.`CERT#` = movie.`PRODUCERC#`) JOIN starsin ON (movie.TITLE = starsin.MOVIETITLE AND starsin.STARNAME = "Harrison Ford");

SELECT DISTINCT studio.NAME, starsin.STARNAME FROM studio JOIN movie ON (movie.STUDIONAME = studio.NAME) JOIN starsin ON (movie.TITLE = starsin.MOVIETITLE) ORDER BY studio.NAME;

SELECT starsin.STARNAME, movieexec.NETWORTH, starsin.MOVIETITLE FROM starsin JOIN movie ON (starsin.MOVIETITLE = movie.TITLE) JOIN movieexec ON (movie.`PRODUCERC#` = movieexec.`CERT#` AND movieexec.NETWORTH = (SELECT MAX(movieexec.NETWORTH) FROM movieexec));

SELECT moviestar.NAME FROM moviestar LEFT JOIN starsin ON (moviestar.NAME = starsin.STARNAME) WHERE starsin.MOVIETITLE is null;

