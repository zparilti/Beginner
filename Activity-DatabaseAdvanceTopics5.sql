-- organizing data/data analysis 
-- Query output with no sorting

SHOW DATABASES; -- comment here 

SELECT name,continent,surfacearea FROM country WHERE surfacearea >=5000000;

-- Query output sorted in ascending/descending order
SELECT name, continent, surfacearea FROM country WHERE surfacearea >= 5000000 ORDER BY surfacearea ASC;
SELECT name, continent, surfacearea FROM country WHERE surfacearea >= 5000000 ORDER BY surfacearea DESC;

-- Query output by using multiple sort operations
SELECT name,continent,surfacearea FROM country WHERE surfacearea >=5000000 ORDER BY continent ASC, surfacearea DESC;
-- Query output by using multiple sort operations but using implicit columns/numbers
SELECT name,continent,surfacearea FROM country WHERE surfacearea >= 5000000 ORDER BY 2 ASC, 3 DESC;
-- Grouping data in query output
SELECT continent,name FROM country WHERE (continent='South America' AND population > 12000000) OR continent = 'Antarctica' ORDER BY 1,2;
-- Grouping data in query output by using GROUP BY
SELECT continent, COUNT(name) AS'countries'FROM country WHERE(continent = 'South America' AND population > 12000000) OR continent = 'Antarctica' GROUP BY continent ORDER BY 1, 2;
-- #Using GROUP BY items with filter conditions
SELECT continent, COUNT (name) AS 'countries' FROM country WHERE (continent = 'South America' AND population > 12000000) OR continent = 'Antarctica' GROUP BY continent HAVING COUNT(name) > 5 ORDER BY 1, 2;
                                      
	

	
/*
this is a 
multiple line 
commment

*/