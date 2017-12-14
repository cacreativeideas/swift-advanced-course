//: Playground - noun: a place where people can play

import UIKit

func randomPicker<T>(_ choice1: T, _ choice2: T, _ choice3: T) -> T {
    let randomIndexValue = arc4random_uniform(3)
    
    switch randomIndexValue {
    case 0:
        return choice1
    case 1:
        return choice2
    default:
        return choice3
    }
}

var randomString = randomPicker("choice1", "choice2", "choice3")
randomString = randomPicker("choice1", "choice2", "choice3")
randomString = randomPicker("choice1", "choice2", "choice3")
randomString = randomPicker("choice1", "choice2", "choice3")

