SELECT students.name AS student_name, email, cohorts.name AS cohort_name
FROM students OUTER JOIN cohorts 
ON students.cohort_id = cohorts.id
LIMIT 100;