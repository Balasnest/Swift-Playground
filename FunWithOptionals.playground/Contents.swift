//: ## Swift Basic Guides
//: ## created by Bala :)
//: * First check this before start. Goto Editor -> Show Rendered Markup

//: # Topic: Optionals

import UIKit

var str = "Hello, playground"

/*: # NIL */
struct Book1 {
    var name:String
    var publishDate: Int
}

let LearnIos = Book1.init(name:"LearnIos",publishDate: 2015)
/*:
 * You don't know the publish date and want to pass Nil.
 * Nil represents the absence of a value or nothing.
 * Uncomment below code */
 //let errorBook = Book1.init(name: "errorBook", publishDate: nil)
/*:
 * Complier throws an error here.
 * All instance properties must be set during initialization.
 * OPTIONAL solves this problems by providing wrapper around a value that may exist. Declare by providing ? after publishDate type name at 8 line.
*/
print(LearnIos.name)
/*: Uncomment 25 line and Force unwrap this value. */
//print(LearnIos.publishDate)


/*: 
 # Specifiying the type of an Optional
 */
var responseCode1 = 404
// var responseCode2 = nil // Error: No type specified when not 'nil'
print(responseCode1)

/*:
 # Working with Optional Value
 ## Optional Binding
 * uncomment below condition.
 */
//if let unwrappedPublishDate = errorBook.publishDate {
//    print(unwrappedPublishDate)
//}
//else{
//    print("Book does not have publish date")
//}

/*:
 # Convertion - String to Int
 * change string value from number to string and check
 * possibleNumber to be an Int? type because the Int(string: String) initializer may or may not be able to successfully convert the String into an Int. If string can be converted into an Int, possibleNumber will hold that value. If it can't, possibleNumber will be nil.
 *
*/
let string = "123"
let possibleNumber = Int(string)
print(possibleNumber!)

/*:
 # Functions and Optionals
 ## Failable Initializer
 */

struct Toddler {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let possibleToddler = Toddler(name: "Joanna", monthsOld: 14)
if let toddler = possibleToddler {
    print("\(toddler.name) is \(toddler.monthsOld) old")
}


struct Cricket {
    var name:String
    var age: Int
    
    init?(name:String, age: Int ) {
        if age < 19 || age > 35 {
            return nil
        }
        else {
            self.name = name
            self.age = age
        }
    }
}
let onePlayer = Cricket(name: "Bala", age: 20)
if let cricket = onePlayer {
    print("\(cricket.name) is \(cricket.age) old")
}
else {
    print("The age you specified is not between 19 - 35")
}

var height:Double! = nil
height = nil
print(height)

/*:
 # if let vs guard 
 */
var nameField:String? = "Bala"
var lastField:String? = "M"
var ageField:Int? = 23


func submitButton() {
    if let firstname = nameField, firstname == "" {
        print("First name is empty")
        return
    }
    if let lastname = lastField, lastname == "" {
        print("Last name is empty")
        return
    }
    if let ageValue = ageField, ageValue == 0 {
        print("Age is empty")
        return
    }
    
    let aboutMe = "First Name is : \(nameField!) and Last Name: \(lastField!)"
    print(aboutMe)
}

submitButton()
/*:
 * guard makes our code readable.
 * This helps avoid the nested conditions as seen in the 'if let'.
 * Unwrapped optional values are available in the rest of the code block and even outside of the conditions. There is no need to unwrap them like we did it in 'if let'.
 */
func guardSubmitButton() {
    guard let firstname = nameField, firstname != "" else {
        print("First name is empty")
        return
    }
    guard let lastname = lastField, lastname != "" else {
        print("last name is empty")
        return
    }
    guard let age = ageField, age != 0 else{
        print("Age is empty")
        return
    }
    let aboutMe = "First Name is : \(firstname) and Last Name: \(lastname)"
    print(aboutMe)
}

guardSubmitButton()

//: other Example for guard
let optionalCharacterArray:[Character?]
optionalCharacterArray = ["A","B",nil,"C","D"]

for char in optionalCharacterArray {
    guard let character = char else {
        print("🤡")
        continue
    }
    print(character)
}

