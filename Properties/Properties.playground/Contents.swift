//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Book {
    var title: String
}

struct Author {
    var firstName: String
    var lastName: String
    var books: [Book] = []
    
    mutating func addBook(_ aBook: Book) {
        books.append(aBook)
    }
}

var theKingsEmp = Book(title: "The Kings Emp")
var bible = Book(title: "bible")

var writer = Author(firstName: "Bala", lastName:"M", books: [theKingsEmp])
writer.addBook(bible)