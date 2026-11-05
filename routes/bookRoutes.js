console.log('bookRoutes loaded');
const express = require('express')
const router = express.Router()

router.get('/', (req,res)=>{
    res.send('Welcome to my humble library 📚')
})


module.exports = router;