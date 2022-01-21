require('dotenv').config({path: '../.env'})

const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  host: process.env.DB_HOST,
  database: 'bootcampx'
});

const coh = process.argv[2];
const limit = process.argv[3];

pool.query(`
SELECT students.id, students.name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '${coh}%'
LIMIT ${limit || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort.`)
  });
})
.catch(err => console.error('query error', err.stack));

