import BookContract from 0x01

access(all) fun main(isbn: String): BookContract.Book? {
    return BookContract.books[isbn]
}
