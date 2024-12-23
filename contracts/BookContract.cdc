pub contract BookContract {
    pub struct Book {
        pub let title: String
        pub let author: String
        pub let isbn: String
        pub let yearPublished: UInt64
        pub let genre: String
        pub let isAvailable: Bool

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

    pub var books: {String: Book}

    init() {
        self.books = {}
    }

    pub fun addBook(
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

    pub fun getBook(isbn: String): Book? {
        return self.books[isbn]
    }
}