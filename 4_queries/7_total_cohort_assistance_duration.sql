-- Get the total time of a cohort's assistance requests.

SELECT cohorts.name AS cohort, sum(completed_at - started_at) AS total_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_assistance_time;