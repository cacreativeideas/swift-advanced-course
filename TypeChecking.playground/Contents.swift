import UIKit

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
}

class TeachingAssistant: Student {
    var subject: String
    var employeeID: Int
    
    init(firstName: String, lastName: String, studentID: Int, subject: String, employeeID: Int){
        self.subject = subject
        self.employeeID = employeeID
        
        super.init(firstName: firstName, lastName: lastName, studentID: studentID)
    }
}

//The lab list was definied as an array of Person
let labSignInList = [
    Student(firstName: "John", lastName: "Doe", studentID: 1111),
    Student(firstName: "Jill", lastName: "Smith", studentID: 2222),
    Student(firstName: "Jack", lastName: "Wallace", studentID: 3333),
    Student(firstName: "Carly", lastName: "Nicolas", studentID: 4444),
    Student(firstName: "Joanne", lastName: "Wilson", studentID: 5555),
    TeachingAssistant(firstName: "Keisha", lastName: "Smith", studentID: 4521, subject: "Digital Systems", employeeID: 76543),
    Person(firstName: "Walter", lastName: "Peters")
]

var studentCount: Int = 0
var assistantsCount = 0
var others = 0

for individual in labSignInList {
    if individual is TeachingAssistant {
        assistantsCount += 1
        individual.firstName
    } else if individual is Student {
        studentCount += 1
        individual.firstName
    } else {
        others += 1
        individual.firstName
    }
}


