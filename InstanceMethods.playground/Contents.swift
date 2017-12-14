//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func sayHello() -> String {
        return "Hi, I am \(firstName) \(lastName)"
    }
    
    func sayHelloUsing(_ language: String, firstNameOnly: Bool) -> String {
        var hello = ""
        
        if firstNameOnly {
            hello = firstName
        } else {
            hello = firstName + " " + lastName
        }
        
        if language == "French" {
            hello = "Bonjour, je m'apelle " + hello
        } else if language == "Spanish" {
            hello = "Hola, me llamo " + hello
        } else {
            hello = "Hi, I am " + hello
        }
        
        return hello
    }
}

var me = Person(firstName: "Caroline", lastName: "Machado")
//var you = Person() error

me.sayHello()
me.sayHelloUsing("French", firstNameOnly: true)


struct GPSCoordinate {
    var lat: Double
    var lon: Double
    var alt: Double
    
    mutating func elevateBy(deltaZ: Double){
        self.alt = self.alt + deltaZ
    }
    
    mutating func reset(){
        self = GPSCoordinate(lat: 0, lon: 0, alt: 0.0)
    }
}

var myPoint = GPSCoordinate(lat: 1.2, lon: 2.3, alt: 3.4)
myPoint.elevateBy(deltaZ: 4)

//to make a 'self' variable mutable - need to mark method as 'mutating'

myPoint.alt

myPoint.reset()
myPoint
