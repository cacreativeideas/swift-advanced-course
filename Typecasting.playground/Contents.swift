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

//The lab list was definied as an array of Person
//Convert to AnyObject
//If the element is struct, don't work -> need to be casted to AnyObject
let list: [AnyObject] = [
    Person(firstName: "John", lastName: "Doe"),
    Person(firstName: "Jill", lastName: "Smith"),
    Person(firstName: "Jack", lastName: "Wallace"),
    Person(firstName: "Carly", lastName: "Nicolas"),
    Person(firstName: "Joanne", lastName: "Wilson")
]

for obj in list {
    let person = obj as? Person
    
    print("This is \(person?.firstName)")
}

enum SomeEnum{
    case member1
    case member2
}

//Use any because have a enum element type
let randomList: [Any] = [
    45.34,
    1834.4324,
    3,
    Person(firstName: "Joanne", lastName: "Wilson"),
    "A String",
    SomeEnum.member1
]

for something in randomList {
    switch something{
    
    case let randomDouble as Double where randomDouble < 100:
        print("Found a smaller double element: \(randomDouble)")
    case let randomDouble as Double where randomDouble > 100:
        print("Found a larger double element: \(randomDouble)")
    case let randomInt as Int:
        print("Found a int element: \(randomInt)")
    case let randomPerson as Person:
        print("Found a person element: \(randomPerson.firstName)")
    case let randomString as String:
        print("Found a string element: \(randomString)")
    default:
        print("Can't be sure")
        
    }
    
    
}
