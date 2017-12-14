//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Math {
    class func addTwoIntegers_class(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}

Math.addTwoIntegers_class(num1: 3, num2: 4)

enum FoodGroup {
    case Fruits
    case Vegetables
    case Meats
    case Dairy
    case Grains
    
    static func getNumberOfGroups() -> String {
        return "There are 5 possible food groups in this enumeration"
    }
}

//FoodGroup.getNumberOfGroups() cannot be used without static
//Cannot use class before function, just static

FoodGroup.getNumberOfGroups()
