const books = require('../books.json')


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

//     static async getAll(){
//         const allBooks = 
//     }
}