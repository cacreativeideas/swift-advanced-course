//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Account {
    var username: String = "nobody"
    var password: String = "123456" {
        willSet {
            print("A new password is about to be set: \(newValue)")
        }
        didSet {
            print("A new password has been set from: \(oldValue)")
        }
    }
    
    init(username: String, password: String){
        self.username = username
        self.password = password
    }
}

var account1 = Account(username: "Jimmy", password: "123456") //willSet e didSet não são chamados na inicialização

account1.password = "teste"
