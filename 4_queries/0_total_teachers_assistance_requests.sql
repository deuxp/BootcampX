
-- Get the total number of assistance_requests for a teacher.

SELECT count(assistance_requests) AS total_assistances, teachers.name
FROM teachers
JOIN assistance_requests
ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;