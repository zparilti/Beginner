-- Conditional search

SELECT name, district, population FROM city WHERE lower(name) LIKE '%town%'; 
--This query returns cities with the word 'town' in their names.

SELECT name, district, population FROM city WHERE district LIKE 'West%'; 
-- This query returns data items for cities with district names starting with 'West'.

SELECT name, district, population FROM city WHERE name LIKE '%Town%'; 
--This query returns cities with the word 'Town' in their names.

select name, district, population from city where name like '%Town%' or name like '%town%';
--This query returns cities with the word 'Town' or 'town' in their names

select name, district, population from city where lower(name) like '%town%';
select name, district, population from city where upper(name) like '%TOWN%';
--These queries returns every city with town in its name. It doesn’t matter whether the name is spelled with uppercase, lowercase, or even mixed-case letters.

select name, district, population from city where district regexp '[vwxyz]' and population > 3000000;
--This query finds the cities that satisfy two distinct criteria. First, it uses a regular expression to find the cities with district names that contain the letters v, w, x, y, or z. The query also states that the cities must have populations greater than 3 million people.

select name, district, population from city where lower(name) regexp 'z{2}';
--This query uses a regular expression to list the cities with names that contain at least two occurrences of the letter z.

select name, district, population from city where district regexp '[W-Z]' and population > 3000000;
--This query finds the cities with district names that contain at least one of the uppercase characters W, X, Y, or Z. This query also states that the cities must have populations greater than 3 million people.

select name, district, population from city where district regexp '[w-z]' and population > 3000000;
--This query finds the cities with district names that contain at least one of the uppercase characters w, x, y, or z. This query also states that the cities must have populations greater than 3 million people.

select name, district, population from city where population regexp '[4-6]' and population > 8000000;
--this example query uses a regular expression to find the cities with populations that contain at least one of the digits 4, 5, or 6. Also, the cities must have populations greater than 8 million people.

SELECT Name, Capital, Region, SurfaceArea, Population FROM world.country WHERE Population BETWEEN 50000000 AND 100000000;
--This query returns Name, Capital, Region, SurfaceArea, Population with population BETWEEN 50000000 AND 100000000

SELECT sum(population) as "Europe Population Total" from world.country WHERE region LIKE "%Europe%";
--In this query the SUM function is still used to calculate the total population of Europe. The query also includes a column alias, which makes the output easier to read. To define the column alias, the AS command is used in the SELECT statement.
