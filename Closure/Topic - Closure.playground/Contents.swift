//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//: # Closures
/*
 #### Closures is also called anonymous function which can be assigned to the variable declaration.
 */
var closure = {() -> Void in print(str)}
var anotherClouser:()->Void = {print(str)}
func runClouser(_ aClosure:() -> Void) {

}
runClouser(anotherClouser)

var yetAnotherClosure:(String,Int) -> Void = {
    (message:String, time:Int) in
        for _ in 0 ..< time {
            
        }
}
yetAnotherClosure(str, 5)

//: # Ways of implementing Closures
//var multiply:(Int,Int) -> Int = {(a:Int, b:Int) in
//    return a * b
//}

var multiply:(Int,Int) -> Int = {
  $0 * $1
}
multiply(2,5)

var calculateCheckOut:(Int,Int)->Int = {
    $0 * $1
}
calculateCheckOut(2,3)

//: # Problems
//: Write a simple closure in a variable called myClosure that will print out a message that reads "I love Swift"
var myClosure = {
    print("I love Swift")
}
//: Write a function that will run a given closure a given number of times. Declare the function like so: func repeatTask(times: Int, task: () -> Void)
func repeatTask (times: Int, task: ()->Void){
    for _ in 0 ..< times {
        task()
    }
}
//: The function should run the task closure, times number of times. Use this function to print "I love Swift" 10 times.
//repeatTask(times: 10, task: myClosure)
//: Create a new array called myArray and add the following integers: 40, 534, 10, 54, 42. Create two closures. One is called printNumbers and the other is printNumbersInReverse. Call both closures passing in the array.
var myArray = [40,534,10,54,42]
var printNumbers:([Int]) -> Void = { (numbers: [Int]) -> Void in
    for num in numbers {
        print(num)
    }
}
var revPrintNumbers:([Int]) -> Void = { (numbers: [Int]) -> Void in
    var counter = numbers.count - 1
    for index in 0 ... counter {
        print(numbers[counter-index])
    }
}
revPrintNumbers(myArray)









