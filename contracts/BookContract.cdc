pub contract BookContract {
    // Define the Book struct
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

    // Store all books
    pub var books: {String: Book}

    init() {
        self.books = {}
    }

    // Function to add a new book using ISBN as key
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

    // Function to get a book by ISBN
    pub fun getBook(isbn: String): Book? {
        return self.books[isbn]
    }
}