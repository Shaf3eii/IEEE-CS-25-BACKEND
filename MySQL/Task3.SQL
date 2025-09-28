--First--
/*
    Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/
SELECT Name From City where countryCode = 'JPN';

--Second--
/*
    Query the following two values from the STATION table:
        The sum of all values in LAT_N rounded to a scale of  decimal places.
        The sum of all values in LONG_W rounded to a scale of  decimal places.
*/
SELECT DECIMAL(ROUND(SUM(LAT_N), 2), 10, 2), DECIMAL(ROUND(SUM(LONG_W), 2), 10, 2) FROM STATION;

--Third--
/*
    Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/
SELECT distinct(City) 
FROM Station 
where City NOT LIKE 'A%'
    AND City NOT LIKE 'I%'
    AND City NOT LIKE 'E%'
    AND City NOT LIKE 'O%'
    AND City NOT LIKE 'U%';

--Fourth--
/*
    Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/
SELECT distinct(City) 
FROM Station 
where City NOT LIKE '%a'
    AND City NOT LIKE '%i'
    AND City NOT LIKE '%e'
    AND City NOT LIKE '%o'
    AND City NOT LIKE '%u';

--Fifth--
/*
    Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
*/
SELECT distinct(City) 
FROM Station 
where City NOT LIKE 'A%'
    AND City NOT LIKE 'I%'
    AND City NOT LIKE 'E%'
    AND City NOT LIKE 'O%'
    AND City NOT LIKE 'U%'
    AND City NOT LIKE '%i'
    AND City NOT LIKE '%e'
    AND City NOT LIKE '%o'
    AND City NOT LIKE '%u'
    AND City NOT LIKE '%a';
--Another--
SELECT distinct(City) 
FROM Station 
where LEFT(City, 1) NOT IN ('A', 'I', 'O', 'U', 'E')
    OR RIGHt (City, 1) NOT IN ('a', 'i', 'o', 'u', 'e');

--Sixth--
/*
    Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
SELECT ROUND(AVG(Population)) From City; 

--Seventh--
/*
    Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022.
    Display the IDs of these 2 users along with the total number of messages they sent. 
    Output the results in descending order based on the count of the messages.
*/
SELECT sender_id, Count(*) as message_count 
FROM messages
Where sent_date >= '08/01/2022'
    AND sent_date < '09/01/2022'
Group by sender_id
Order By message_count desc
LIMIT 2;

--Eigth--
/*
    Assume you have an events table on Facebook app analytics. Write a query to calculate the click-through rate (CTR) for the app in 2022 and round the results to 2 decimal places.
    Definition and note:
    Percentage of click-through rate (CTR) = 100.0 * Number of clicks / Number of impressions
    To avoid integer division, multiply the CTR by 100.0, not 100.
*/
SELECT app_id, ROUND(
        100.0 * SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END)
        / NULLIF(SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END), 0),
        2) as ctr
FROM events
Where timestamp >= '01/01/2022' AND timestamp < '01/01/2023' 
GROUP BY app_id;