access(all) contract BookContract {
    access(all) struct Book {
        access(all) let title: String
        access(all) let author: String
        access(all) let isbn: String
        access(all) let yearPublished: UInt64
        access(all) let genre: String
        access(all) let isAvailable: Bool

        init(
            title: String,
            author: String,
            isbn: String,
            yearPublished: UInt64,
            genre: String,
            isAvailable: Bool
        ) {
            self.title = title
            self.author = author
            self.isbn = isbn
            self.yearPublished = yearPublished
            self.genre = genre
            self.isAvailable = isAvailable
        }
    }

    access(all) var books: {String: Book}

    init() {
        self.books = {}
    }

    access(all) fun addBook(
        title: String,
        author: String,
        isbn: String,
        yearPublished: UInt64,
        genre: String,
        isAvailable: Bool
    ) {
        let newBook = Book(
            title: title,
            author: author,
            isbn: isbn,
            yearPublished: yearPublished,
            genre: genre,
            isAvailable: isAvailable
        )
        self.books[isbn] = newBook
    }

    access(all) fun getBook(isbn: String): Book? {
        return self.books[isbn]
    }
}
