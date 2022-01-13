SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
Order by day;