-- Get the average time of a cohort's assistance requests.

SELECT cohorts.name AS cohort, avg(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY average_assistance_time;
