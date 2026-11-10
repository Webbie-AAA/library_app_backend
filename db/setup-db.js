const fs = require('fs');
const db = require('./connector');


//Sync means the script pauses until the read finishes, which is fine for a setup script.
const sql = fs.readFileSync(__dirname + '/library.sql').toString()

db.query(sql)
    .then(data => console.log('DB setup successful'))
    //.then runs whenever Postgres accepts the query, even if it returns zero rows.
    .catch(error => console.log(error))
    //.catch runs only when Postgres rejects it. Zero rows is still a success.