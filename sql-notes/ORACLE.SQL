/*
ORACLE SQL NOTES
*/

-- LIMIT: useful for fast exploration with big data sets
SELECT
*
FROM mytable
FECTH NEXT 5 ROWS ONLY;


-- ORDER BY: sort comand with DESC change their beheavior
-- Select rows from a Table

SELECT
id,
ammount
FROM mytable
ORDER BY DESC
ammount