import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

extension Person {
    var wholeName: String {
        set(newValue){
            self.wholeName = newValue
        }
        get {
            return firstName + " " + lastName
        }
    }
    
    convenience init(wholeName: String) {
        var split = wholeName.components(separatedBy: " ")
        
        let firstName: String = split[0]
        let lastName: String = split[1]
        
        self.init(firstName: firstName, lastName: lastName)
    }
    
}

var person = Person(firstName: "Caroline", lastName: "Machado")
person.wholeName

var person2 = Person(wholeName: "Sebastiao Machado")
person2.wholeName
person2.firstName


extension Person {
    //var age: Int //Can't create stored properties inside a extension
    //Only computed properties
    var age: Int {
        set(newValue){
            self.age = newValue
        }
        get {
            return self.age
        }
    }
    
    enum LifeCycleStage {
        case Childhood, Teenage, YoungAdult, Adult
    }
    
    var stage: LifeCycleStage {
        switch self.age {
        case 0...12:
            return .Childhood
        case 13...19:
            return .Teenage
        case 20...35:
            return .YoungAdult
        case 36...150:
            return .Adult
        default:
            return .Adult
        }
    }
    
    convenience init(firstName: String, lastName: String, age: Int) {
        self.init(firstName: firstName, lastName: lastName)
        
        self.age = age
    }
    
    //It be possible to create subscriptions and nested type too
}
