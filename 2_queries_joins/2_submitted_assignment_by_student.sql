SELECT students.name AS student, count(assignment_submissions.*) AS submitted
FROM students 
JOIN assignment_submissions 
ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;

-- total submissions are less than 100;

