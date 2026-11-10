const db = require('../db/connector');


class Book{
    constructor(book){
    this.id = book.id;
    this.title = book.title;
    this.author = book.author;
    this.subject = book.subject || [];
    this.publication = book.publication;
    this.reading_log = book.reading_log;
    this.avg_rating = book.avg_rating;
    }
//With static: method belongs to class. Else belongs ot each instance of the class
    static async getAll(){
        const allBooks = await db.query('SELECT * FROM library_books');

        if(allBooks.rows.length === 0){
            throw new Error(`There appears to be an error with our internal server. Please try again later.`)
        }

        return allBooks.rows.map(book => new Book(book))
    }
}

module.exports = Book