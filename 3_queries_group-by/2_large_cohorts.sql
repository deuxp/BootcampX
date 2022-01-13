-- Get all cohorts with 18 or more students.

SELECT cohorts.name AS cohort, count(students.*) AS total_students
FROM cohorts
JOIN students
ON cohorts.id = cohort_id
GROUP BY cohort
HAVING count(students.*) >= 18
ORDER BY total_students;