const express = require('express');
const cors = require('cors');
const bookRoutes = require('./routes/bookRoutes')

const app = express()

app.use(cors())
app.use(express.json())
app.use('/library', bookRoutes)

app.use((req, res, next)=>{
    console.log(req.method, req.url);
    next();
})



module.exports = app;