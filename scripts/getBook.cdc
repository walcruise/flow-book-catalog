import BookContract from 0x01

pub fun main(isbn: String): BookContract.Book? {
    return BookContract.getBook(isbn: isbn)
}