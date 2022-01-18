-- List each assignment with the total number of assistance requests with it.

Select assignments.id, day, chapter, assignments.name as assignment, count(assistance_requests) as total_requests

FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP by assignments.id
Order by total_requests DESC;
