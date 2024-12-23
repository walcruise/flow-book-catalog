import BookContract from 0x01

transaction(
    title: String,
    author: String,
    isbn: String,
    yearPublished: UInt64,
    genre: String,
    isAvailable: Bool
) {
    prepare(signer: AuthAccount) {
        BookContract.addBook(
            title: title,
            author: author,
            isbn: isbn,
            yearPublished: yearPublished,
            genre: genre,
            isAvailable: isAvailable
        )
        log("Added book with ISBN: ".concat(isbn))
    }
}