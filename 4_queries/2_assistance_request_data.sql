-- Get important data about each assistance request.

SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests 
LEFT JOIN teachers ON teachers.id = teacher_id
LEFT JOIN students ON students.id = student_id
LEFT JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

-- (26299 rows)


-- For the requirement: Assistance Requests Data,
-- The joins should be specified as 'LEFT JOIN', else any assistance requests that dont specify an assignment aren't returned