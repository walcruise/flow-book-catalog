# Flow Book Catalog Contract

A Flow blockchain contract for managing a book catalog system.

## Contract Structure

### Book Struct
- title: String
- author: String
- isbn: String
- yearPublished: UInt64
- genre: String
- isAvailable: Bool

## How to Deploy

1. Visit https://play.flow.com/
2. Go to the 'Accounts' tab
3. Click 'Deploy Contract'
4. Name the contract 'BookContract'
5. Copy and paste the contract code
6. Deploy

## Usage

### Adding a Book
Use the `addBook.cdc` transaction with the following parameters:
- title
- author
- isbn
- yearPublished
- genre
- isAvailable

### Getting Book Details
Use the `getBook.cdc` script with the ISBN of the book you want to retrieve.

## Files

- `contracts/BookContract.cdc`: Main contract file
- `transactions/addBook.cdc`: Transaction to add a new book
- `scripts/getBook.cdc`: Script to retrieve book details