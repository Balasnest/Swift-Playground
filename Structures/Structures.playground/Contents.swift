//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//: # Structures
struct Book {
    var title: String
}

struct Author {
    var firstName: String
    var lastName: String
    var books: [Book] =  []
    
    mutating func addBook(_ aBook: Book) {
        books.append(aBook)
    }
}
//: mutating keyword - enable it to modify its properties
var book = Book(title: "iOS")
var anotherBook = Book(title: "Swift")
var writer = Author(firstName: "Bala", lastName: "M", books: [book])
writer.addBook(anotherBook)

//: ## Problem : 1
//: Create a T-shirt struct that has size, color and material options. The size prices go from 3, 5, 7. The colors range from red, blue, and white. It should range from 2, 3, and 1. Finally, for material options, choose regular or organic. It should be 5 or 10. Print out the result in calculatePrice()

//: Here's an example of creating a struct:
//: var tshirt = TShirt(size: "M", color: "red", material: "organic")
struct TShirt {
    var size:String
    var color:String
    var material:String
    
    func calculatePrice()->Int {
        var total = 0
        
        switch size {
        case "S": total += 3
            break
        case "M": total += 5
            break
        case "L": total += 7
            break
        default:
            break
        }
        
        switch color {
        case "red": total += 2
            break
        case "blue": total += 3
            break
        case "white": total += 1
            break
        default:
            break
        }
        
        switch material {
        case "regular": total += 5
            break
        case "organic": total += 7
            break
        default:
            break
        }
        return total
        
    }
}
let newShirt = TShirt(size: "M", color: "red", material: "organic")
newShirt.calculatePrice()
//: Refactor the code
struct TShirtProperty{
    var name = ""
    var price = 0
}
var mediumSize = TShirtProperty(name: "M", price: 5)
var smallSize = TShirtProperty(name: "S", price: 3)
var largeSize = TShirtProperty(name: "L", price: 7)

var redColor = TShirtProperty(name: "red", price: 2)
var blueColor = TShirtProperty(name: "blue", price: 3)
var WhiteColor = TShirtProperty(name: "white", price: 1)

var regMaterial = TShirtProperty(name: "regular", price: 5)
var organicMaterial = TShirtProperty(name: "organic", price: 10)

struct newTshirt {
    var size:TShirtProperty
    var color:TShirtProperty
    var material:TShirtProperty
    
    func calculatePrice() -> Int {
        var value = 0
        value += size.price
        value += color.price
        value += material.price
        
        return value
    }
}
var newTTTShirt = newTshirt(size: mediumSize, color: redColor, material: organicMaterial)
newTTTShirt.calculatePrice()




















