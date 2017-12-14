//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Default parameter example
func delimitString(_ string: String, delimiter: String = "-") -> String {
    var result: String = ""
    
    for char in string {
        result = result + String(char) + delimiter
    }
    
    let lastIndex = result.index(before: result.endIndex)
    let newString = String(result[..<lastIndex])
    
    return newString
}

delimitString("Hello")
delimitString("Hello", delimiter: ";")

//Variadic parameter
func product(_ inputNums: Int...) -> Int {
    var product: Int = 1
    
    //Int... = [Int]
    for num in inputNums {
        product = product * num
    }
    
    return product
}

product()
product(2)
product(1,2)
product(1,2,3)
product(1,2,3,4)
product(1,2,3,4,5)


//Constant and Variable Function Parameters
func delimitString(inputString: inout String, delimiter: String = "-") -> String {
    inputString = "something else"
    
    var result: String = ""
    
    for char in inputString {
        result = result + String(char) + delimiter
    }
    
    let lastIndex = result.index(before: result.endIndex)
    let newString = String(result[..<lastIndex])
    
    return newString
}

var anotherString = "hello"

delimitString(inputString: &anotherString)
anotherString


//Function Types

//()->()
func sayHello(){
    print("Hello")
}

//(String, String)->String
func welcome(firstName: String, lastName: String) -> String {
    return "Hello \(firstName) \(lastName)"
}

welcome(firstName: "Carol", lastName: "Machado")

var myVariable: (String,String) -> String

myVariable = welcome(firstName:lastName:)
myVariable("Dilermando", "Barbosa")
