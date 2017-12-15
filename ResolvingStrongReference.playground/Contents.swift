//: Playground - noun: a place where people can play

import UIKit

class Brother {
    var name: String
    var sister: Sister?
    
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
//Memory leak because the instance can never be deallocated now

keisha = nil
dee = nil
//Instances of Brother and Sister not deallocated



