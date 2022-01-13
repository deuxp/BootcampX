-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.


Select students.name AS student, avg(assignment_submissions.duration) AS avg_completion_time, avg(assignments.duration) AS suggested_completion_time
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_completion_time


