-- FACT FINDING: DATABASES
-- Question # 1:
/* 
What is the difference between a relationaland a non-relational database?

Relational Databases:
* Data is organized in a table format with rows and columns. 
* Relationships are defined using foreign keys.
* Improved performance by upgrading the server. 
* Examples: Amazon RDS (Relational Database Service). Amazon RDS supports several popular relational database engines, including MySQL       
 
Non-relational (NoSQL) Databases:
* Columns in tables can be flexible.
* stores data as a collection of key-value pairs.
* Each item in a table can have different data.
* Better performance by adding more servers.
* more flexible in the way they store data
* Example: fully managed, server less, NoSQL database DynamoDB

*/

-- Question # 2:
/*
What are indexes?

An  index is a data structure that improves the speed of data 
retrieval operations on a database table. Indexes are used to 
optimize query performance by reducing the number of rows that 
need to be examined.

*/
CREATE INDEX idx_lastname ON Persons (LastName);
CREATE INDEX idx_pname ON Persons (LastName, FirstName);
DROP INDEX table_name.index_name; -- SQL
ALTER TABLE table_name DROP INDEX index_name; -- MySQL

-- Question # 3
/*
What are primarykeys and secondary keys?

Primary Keys:
Unique identifiers for records in a database table.
Mandatory for every table, set during table creation in AWS databases like Amazon RDS.

Secondary Keys:
Optional field providing an additional way to access data in a database table.
Can be created in AWS databases like Amazon DynamoDB to accelerate non-primary key queries.

*/
CREATE TABLE Pets (
    PetID INT NOT NULL,
    PetName VARCHAR(255) NOT NULL,    
    CONSTRAINT PK_Pets PRIMARY KEY (PetID, PetName)
);

-- Question # 4

/*
What are inner joins and outer joins?

INNER JOIN - Returns records that have matching values in both tables.
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
*/

-- INNER JOIN - Returns records that have matching values in both tables.
/* Example:join Customers and Orders tables select customer_id and 
first_name columns from the Customers table select amount from the Orders table
Here, the Customers and Orders table are joined on the Customers.customer_id = Orders.customer condition. 
The code below excludes all the rows that don't satisfy this condition.
*/
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers INNER JOIN Orders ON Customers.customer_id = Orders.customer;

-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
/* 
Example: left join Customers and Orders tables based on their shared customer_id columns: 
Customers is the left table and Orders is the right table

Here, the code left joins the Customers and Orders tables based on customer_id, 
which is common to both tables. The result set contains: 
customer_id and first_name columns from the Customers table (including those whose 
customer_id value is not present in the Orders table) item column from the Orders table
*/

SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
/* Example: join Customers and Orders tables: based on their shared customer_id columns
Customers is the left table and Orders is the right table */
/
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
/* Here, the code right joins the Customers and Orders tables based on customer_id, 
which is common to both tables. The result set contains customer_id and first_name columns from the Customers table
item column from the Orders table (including those whose customer_id value is not present in the Customers table) */

-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table. For example:
-- full join Customers and Orders tables
-- based on their shared customer_id columns
-- Customers is the left table
-- Orders is the right table

SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

/* Here, the SQL query performs a FULL OUTER JOIN on two tables, Customers and Orders. 
This means that the result set contains all the rows from both tables, 
including the ones that don't have common customer_id values.
*/

-- Question # 5
/*
What is the difference between DROPTABLEand TRUNCATETABLE?

drop table" is used to delete or remove the entire table and its content, 
while "truncate table" is used just to remove the data found in rows of the table 
while maintaining the schema of the table for future use. For example:
*/
DROP TABLE your-table-name;
/* would completely remove the table and its data while */

TRUNCATE TABLE your-table-name;
/* would only remove the rows of "your-table-name" but leave the structure/schema */

-- Question # 6
/*
What are the different data types in SQL?
Numeric types include INTEGER,SMALLINT,BIGINT,FLOAT,DECIMAL and REAL.
INTEGER, SMALLINT, and BIGINT data types represent whole numbers like 100000, 10,10010011000100
FLOAT,DECIMAL and REAL data types represent floating numbers like 10.11.
Character strings include CHAR, VARCHAR and CLOB.
Date and time data types include DATE, TIME and TIMESTAMP. For Example: 
*/
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
	BirthDate DATE
);


-- Question # 7
/* The WHERE clause in SQL is a method to filter and select
rows with specific conditions. For example, filtering rows
that only have a population over 100,000: */

SELECT Name, Capital, Region, SurfaceArea, Population FROM world.country WHERE Population >= 50000000

/* The HAVING clause in SQL is a substitute for the WHERE clause and is paired with the GROUP BY clause which is
able to filter results of aggregate functions like AVG. For example: */

SELECT Name, Capital, Region, SurfaceArea, Population FROM world.country GROUP BY  Region HAVING AVG(Population) > 100,000


