-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT sum(assignment_submissions.duration) AS cohort_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE 'FEB12';
