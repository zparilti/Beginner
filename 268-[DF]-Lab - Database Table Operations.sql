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

SHOW TABLES;
/* show table structure */
DESCRIBE world.country;

/* make sure table is empty */
SELECT * FROM world.country;

/* VALUES corresponds to object attributes - field name/column */
INSERT INTO world.country VALUES ('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,76.8,75921.00,73132.00,'Ireland/Éire','Republic',1447,'IE');

/* see table content */
SELECT * FROM world.country;

SELECT AVG(LifeExpectancy) FROM country;


/* 
DESCRIBE world.city;
DESCRIBE world.countrylanguage;
*/

-- Ctrl + l -- clear screen

/*
According to this world database, what is the average of life expectancy of the world population? 
tip: use AVG() function
SELECT AVG(LifeExpectancy) FROM country;
*/

/*
# Module Imports
import mariadb
import sys

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user="root",
        password="re:St@rt!9",
        host=" 10.1.11.156",
        port=3306,
        database="world"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()

cur.execute(
    "SELECT Name FROM country)

for (Name) in cur:
    print(f"Country Name: {Name}")

*/

/*
# Module Imports
import mariadb
import sys

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user="root",
        password="re:St@rt!9",
        host=" 10.1.11.156",
        port=3306,
        database="world"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()

cur.execute(
    "SELECT Name FROM country)

for (Name) in cur:
    print(f"Country Name: {Name}")

*/

/* deleting a database */

DROP DATABASE world2; 

SHOW DATABASES;
CREATE DATABASE world2;
SHOW DATABASES;

CREATE TABLE world.country (
  `Code` CHAR(3) NOT NULL DEFAULT '',
  `Name` CHAR(52) NOT NULL DEFAULT '',
  `Conitinent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South  America') NOT NULL DEFAULT 'Asia',
  `Region` CHAR(26) NOT NULL DEFAULT '',
  `SurfaceArea` FLOAT(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` SMALLINT(6) DEFAULT NULL,
  `Population` INT(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` FLOAT(3,1) DEFAULT NULL,
  `GNP` FLOAT(10,2) DEFAULT NULL,
  `GNPOld` FLOAT(10,2) DEFAULT NULL,
  `LocalName` CHAR(45) NOT NULL DEFAULT '',
  `GovernmentForm` CHAR(45) NOT NULL DEFAULT '',
  `HeadOfState` CHAR(60) DEFAULT NULL,
  `Capital` INT(11) DEFAULT NULL,
  `Code2` CHAR(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
);

USE world;
SHOW TABLES;

SHOW COLUMNS FROM world.country;
ALTER TABLE world.country RENAME COLUMN Conitinent TO Continent;
SHOW COLUMNS FROM world.country;
SHOW DATABASES;


/*

import sqlite3
con = sqlite3.connect("world.db")

cur = con.cursor()

cur.execute("CREATE TABLE movie(title, year, score)")
cur.execute("INSERT INTO world.movie VALUES ('Kungfu','2005','5000')")

#res = cur.execute("SELECT name FROM sqlite_master")
#res.fetchone()

https://docs.python.org/3/library/sqlite3.html

*/

mysql -u root --password='re:St@rt!9' world < mysqlscript.sql > /var/www/html/index.html

SELECT AVG(Population) FROM country;
SELECT CAST(AVG(LifeExpectancy) AS DECIMAL(10,2)) FROM country;



