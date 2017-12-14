//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct PowerCalculator {
    let base: Double
    
    subscript(raisePower: Double) -> Double {
        get {
            return pow(base, raisePower)
        }
        set {
            
        }
    }
}

let calculator = PowerCalculator(base: 3)

calculator[4] // valor passado entre [] é o valor que será recebido como raisePower no subscript
