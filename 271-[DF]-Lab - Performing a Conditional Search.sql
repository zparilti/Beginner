/* -------------------
# Author: Zeki
# Topic: 271-[DF]-Lab - Performing a Conditional Search
# -------------------
*/

SHOW DATABASES; -- show 
-- 
SELECT name, lifeexpectancy, lifeexpectancy+5.5 AS newlifeexpectancy FROM country WHERE gnp > 1300000;

SELECT sum(Population) from world.country WHERE Region LIKE "%Europe%";

SELECT sum(Population) from world.country WHERE Region LIKE "%Asia"%;

SELECT Region from world.country;

SELECT Region from world.country ORDER BY Region;
SELECT Continent from world.country ORDER BY Continent;

SELECT DISTINCT Continent from world.country ORDER BY Continent;

SELECT sum(Population) from world.country WHERE Continent LIKE "%Africa"%;




/*
# this part is bash script
sudo su
cd /home/ec2-user/
# change root user password for database
mysql -u root --password='re:St@rt!9'

# go into DBMS to run individual mysql scripts
mysql -u root --password='re:St@rt!9' world 
# Expected DBMS shell with 'world' database selected
# MariaDB [world]>

# run a mysql script file on a database from bash
mysql -u root --password='re:St@rt!9' world < mysqlscript.sql

# world.sql is the name of the database you are interacting with
# mysqlscript.sql is the sql statements you are applying to the database

# SQL scripts that go into mysqlscript.sql are below: 


*/