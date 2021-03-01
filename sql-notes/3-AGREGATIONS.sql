-- NULLS
SELECT
*
FROM
my_table
WHERE
my_table.cola IS NOT NULL AND my_table.colb IS NULL;


-- COUNT
SELECT COUNT(*)
FROM my_table;

SELECT COUNT(col)
FROM my_table;

--SUM -- NULL as treated as 0
SELECT 
SUM(cola),
SUM(colb + colc),
cold+cole
SUM(cole)/SUM(colf)
FROM
my_table;

-- MIN MAX --NULL as ignored
SELECT
MIN(cola),
MAX(colb)
FROM
my_table;

-- AVG --NULL as ignored
SELECT
AVG(col)
FROM
my_table;

-- GROUP BY
SELECT
cola
AVG(colb)
FROM
my_table;

-- UNIQUE
SELECT UNIQUE col_1, col_2
FROM mytable;

--HAVING clean way to filter aggregated data
SELECT 
col1,
SUM(col2) sumc2
FROM mytable
GROUP by COL1
HAVING sumc2 > 100;

--DATES
--DATE_TRUNC('day', '01-20-2022 14:00:10')  **day,year,month,etc
--DATE_PART('day', '01-20-2022 14:00:10')  **day,year,month,etc


-- case

SELECT account_id, CASE WHEN standard_qty = 0 OR standard_qty IS NULL THEN 0
                        ELSE standard_amt_usd/standard_qty END AS unit_price
FROM orders
LIMIT 10;