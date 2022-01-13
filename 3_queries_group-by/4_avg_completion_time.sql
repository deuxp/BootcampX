-- Get currently enrolled students' average assignment completion time.=

SELECT students.name AS student, avg(assignment_submissions.duration) AS average_time
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_time DESC;
