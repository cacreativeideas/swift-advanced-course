//: Playground - noun: a place where people can play

import UIKit

//Stored Properties
class Person {
    var firstName: String
    var lastName: String
    let gender: String
    
    init(firstName: String, lastName: String, gender: String){
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
    }
}

let person1 = Person(firstName: "Carol", lastName: "Machado", gender: "Feminino")
person1.firstName = "Caroline"
//print("\(person1.firstName)")
//person1.gender = "Fem" //error - gender is a let constant

var person2 = Person(firstName: "Eliane", lastName: "Machado", gender: "Feminino")
person2.lastName = "Alves Machado"

struct GPSCoordinate {
    var name: String
    let lat: Double
    let lon: Double
    var elevation: Double
}

let place1 = GPSCoordinate(name: "Place 1", lat: 12.34, lon: 45.67, elevation: 23)
//place1.name = "Some Place" //error - place 1 is a let constant

var place2 = GPSCoordinate(name: "Place 2", lat: 12.34, lon: 45.67, elevation: 23)
place2.name = "Some Place 2"

class Profiler {
    
    init() {
        print("Setting up profiler")
    }
    
    func getProfile(){
        print("Returning the profile")
    }
}

class Test {
    var profiler: Profiler = Profiler()
}

class Test2 {
    lazy var profiler: Profiler = Profiler()
}

print("Returning the test 1st of profiler:")
var test1: Test = Test()

print("Returning the test 2nd of profiler - with lazy var:")
var test2: Test2 = Test2()

print("Returning the test 2nd of profiler - calling a function:")
test2.profiler.getProfile()
