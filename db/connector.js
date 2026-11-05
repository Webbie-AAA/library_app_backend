const {Pool} = require('pg')



const db = Pool ({
    connectionString: process.env.DB_URL
})


module.exports = db