import BookContract from 0x01

transaction(
    title: String,
    author: String,
    isbn: String,
    yearPublished: UInt64,
    genre: String,
    isAvailable: Bool
) {
    prepare(acct: AuthAccount) {
        let contractRef = getAccount(0x01)
            .contracts
            .borrow<&BookContract>()
            ?? panic("Could not borrow reference to contract")
        
        contractRef.addBook(
            title: title,
            author: author,
            isbn: isbn,
            yearPublished: yearPublished,
            genre: genre,
            isAvailable: isAvailable
        )
        log("Added book with ISBN: ".concat(isbn))
    }

    execute {
        // The execute phase is empty since we did everything in prepare
    }
}
