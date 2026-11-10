const Book = require('./libraryModel');
const db = require('../db/connector');

async function test() {
    try {
        const books = await Book.getAll();
    
    } catch (err) {
        console.log('ERROR:', err.message);
    } finally {
        await db.end();
    }
}

test();