-- LENGTH, LEFT, RIGHT, UPPER, LOWER, TRIM
LENGTH(mycolumn)

--EXAMPLE
SELECT SUM(num) nums, SUM(letter) letters
FROM (SELECT name, CASE WHEN LEFT(UPPER(name), 1) IN ('0','1','2','3','4','5','6','7','8','9') 
                       THEN 1 ELSE 0 END AS num, 
         CASE WHEN LEFT(UPPER(name), 1) IN ('0','1','2','3','4','5','6','7','8','9') 
                       THEN 0 ELSE 1 END AS letter
      FROM accounts) t1;

-- SUBSTR, POSITION, STRPOS --those are case sensitive so you can combine with UPPER OR LOWER
POSITION(',' in mycolumn)
STRPOS(mycolumn, ',')

-- CONCAT 
CONCAT(first_name, ' ', last_name) 
first_name || ' ' || last_name --MUST BE CHARS

-- REPLACE
REPLACE(mycolumn, ' ', '')

-- CAST, TO_DATE
DATE_PART('month', TO_DATE(month, 'month'))

--EXAMPLE
SELECT date orig_date, (SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) || '-' || SUBSTR(date, 4, 2)) new_date
FROM sf_crime_data;

--COALESCE
