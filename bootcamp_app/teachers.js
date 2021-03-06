require('dotenv').config({path: '../.env'})

const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  host: process.env.DB_HOST,
  database: 'bootcampx'
});
  
const cohort = process.argv[2];
const values = [`%${cohort}%`]


pool.query(`
SELECT DISTINCT teachers.name as instructor, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id

WHERE cohorts.name LIKE $1
ORDER BY teachers.name;
`, values)
.then(res => {
  console.log('connected')
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.instructor}`)
  });
})
.catch(err => console.error('query error', err.stack))



