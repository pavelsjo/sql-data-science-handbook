-- SELECT * FROM (--NESTED QUERY) -- ALIAS

SELECT 
channel,
AVG(total) total
From(SELECT
COUNT(id)total,
channel channel,
DATE_TRUNC('day', occurred_at) total_day
FROM web_events
GROUP BY channel, total_day) t_day
GROUP BY channel
ORDER BY 1;

--Well Formatted Query
SELECT *
FROM (SELECT DATE_TRUNC('day',occurred_at) AS day,
                channel, COUNT(*) as events
      FROM web_events 
      GROUP BY 1,2
      ORDER BY 3 DESC) sub
GROUP BY day, channel, events
ORDER BY 2 DESC;

-- Filters
SELECT
*
FROM 
orders o
WHERE (SELECT
MIN(DATE_TRUNC('month', occurred_at))
FROM orders) = date_trunc('month', o.occurred_at)
ORDER BY o.occurred_at DESC;

-- WITH
WITH events AS (
          SELECT DATE_TRUNC('day',occurred_at) AS day, 
                        channel, COUNT(*) as events
          FROM web_events 
          GROUP BY 1,2)

SELECT channel, AVG(events) AS average_events
FROM events
GROUP BY channel
ORDER BY 2 DESC;