--First--
/*
    Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
*/
SELECT * From City where Population > 100000 and countrycode = 'USA';

--Second--
/*
    Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
*/
SELECT Name from City where population > 120000 and CountryCode = 'USA';

--Third--
/*
    Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/
SELECT * From City where CountryCode = 'JPN';

--Fourth--
/*
    Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/
SELECT name From Employee order by name;

--Fifth--
/*
    Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000$ per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
*/
SELECT name from Employee where months < 10 and salary > 2000 ORDER BY employee_id;

--Sixth--
/*
    Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/
SELECT name from Students where Marks > 75  ORDER by Right(name, 3), ID;

--Seventh--
/*
    Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query to determine which parts have begun the assembly process but are not yet finished.
*/
SELECT part, assembly_step FROM parts_assembly WHERE finish_date ISNULL;