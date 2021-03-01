-- join
SELECT r.name region,
s.name sales_rep,
a.name
FROM region r
JOIN sales_reps s ON r.id = s.region_id AND r.name = 'Midwest'
JOIN accounts a ON s.id = a.sales_rep_id
ORDER BY a.name;


-- aliases
Select t1.column1 aliasname, t2.column2 aliasname2
FROM tablename t1
JOIN tablename2 t2