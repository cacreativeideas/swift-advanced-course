//https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html

import UIKit

class Brother {
    var name: String
    //weak for solve strong reference issue
    weak var sister: Sister?
    
    init(name: String){
        self.name = name
        print("Instance of Brother \(name) initialized")
    }
    
    deinit {
        print("Instance of Brother deinitialized")
    }
}

class Sister {
    var name: String
    var brother: Brother?
    
    init(name: String){
        self.name = name
        print("Instance of Sister \(name) initialized")
    }
    
    deinit {
        print("Instance of Sister deinitialized")
    }
}

var keisha: Sister?
var dee: Brother?

keisha = Sister(name: "Keisha")
dee = Brother(name: "Demetrius")

keisha?.brother = dee
dee?.sister = keisha
//Memory leak is not a issue anymore...

keisha = nil
dee = nil
//Instances of Brother and Sister now are deallocated




