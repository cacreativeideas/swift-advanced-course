//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func allAboutPerson() -> String {
        return "This person has a name \(firstName) + \(lastName)"
    }
    
    final func getCompleteName() -> String {
        return "\(firstName) + \(lastName)"
    }
}

class Student: Person {
    
    var studentID: Int
    
    init(firstName: String, lastName: String, studentID: Int){
        self.studentID = studentID
        
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func allAboutPerson() -> String {
        return "This student has a name \(firstName) + \(lastName) and your student ID is \(studentID)"
    }
    
    /*
     a func with "final" don't allow to override
     
    override func getCompleteName() -> String {
        return "Student complete name"
    }
     */
}
