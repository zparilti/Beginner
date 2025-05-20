


-- NOW() function provides an input argument to the TIMESTAMPDIFF() function.
SELECT Code, Name, Continent TIMESSTAMPDIFF(YEAR, IndepYear, NOW()) FROM country

-- Limiting query results to a specific number of rows
SELECT continent, sum(population) AS 'total_pop'
from country group by continent order by 2 desc limit 3