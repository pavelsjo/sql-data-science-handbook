/*
SQL UDACITY NOTES
*/

-- LIMIT
SELECT 
occurred_at, 
account_id, 
channel
FROM web_events
LIMIT 10;

-- ORDER BY
SELECT
id, 
occurred_at,
total_amt_usd
FROM 
orders
ORDER BY
occurred_at DESC, total_amt_usd
LIMIT 10;

-- WHERE
-- Numeric operators <, >, <=, >=, =, !=
SELECT
*
FROM orders
WHERE
id = 4201;

SELECT
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';

-- Aritmetic Operations +, -, /, *

SELECT
id, 
account_id,
(standard_amt_usd/total_amt_usd)*100 AS std_percent,
standard_amt_usd-total_amt_usd AS std_value,
poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;

/*
-----------------
Logical Operators
-----------------

- LIKE, IN, NOT, AND & BETWEEN, OR.
- To expresess any character use %.
- To enclose string use single quotes ''.

*/

-- LIKE
SELECT name
FROM accounts
WHERE name LIKE '%one%';

-- NOT LIKE

SELECT name
FROM accounts
WHERE name not LIKE '%s';

-- IN
SELECT
name, primary_poc, sales_rep_id
from accounts
where name IN ('Walmart', 'Target', 'Nordstrom');

-- NOT IN
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom')

-- AND and BETWEEN
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE sales_rep_id >= 6 AND sales_rep_id <= 10
WHERE sales_rep_id BETWEEN 6 AND 10

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;

-- OR

--numeric
SELECT
*
FROM
orders
WHERE
standard_qty = 0 AND (gloss_qty < 1000 OR poster_qty < 1000);

--text
SELECT
*
FROM
accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%' OR primary_poc NOT LIKE '%eana%');


