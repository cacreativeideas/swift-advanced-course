//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Type Properties

struct MyStruct {
    static var myVariableStoredTypeProperty = "I am a static variable stored property associated with type MyStruct"
    
    static let myContantStoredTypeProperty = "I am a static constant stored property associated with type MyStruct"
    
    static var myVariableComputedTypeProperty: Int {
        return 10 //Type property is computed and then returned
    }
}

MyStruct.myVariableStoredTypeProperty = "Teste"

enum MyEnum {
    static var myVariableStoredTypeProperty = "I am a static variable stored property associated with type MyStruct"
    
    static let myContantStoredTypeProperty = "I am a static constant stored property associated with type MyStruct"
    
    static var myVariableComputedTypeProperty: Int {
        return 10 //Type property is computed and then returned
    }
    
    case EnumValue1
    case EnumValue2
}

class MyClass {
    static var myVariableStoredTypeProperty = "I am a static variable stored property associated with type MyStruct"
    
    static let myContantStoredTypeProperty = "I am a static constant stored property associated with type MyStruct"
    
    static var myVariableComputedTypeProperty: Int {
        return 10 //Type property is computed and then returned
    }
}

MyClass.myVariableStoredTypeProperty = "Bla"
MyClass.myVariableStoredTypeProperty // Type properties allow to access these properties without needing instances of theses classes


class MyClass2 {
    static var myVariableStoredTypeProperty = "I am a static variable stored property associated with type MyStruct"
    
    class var myVariableComputedTypeProperty: Int {
        return 10 //Type property is computed and then returned
    }
}

MyClass2.myVariableComputedTypeProperty

MyClass2.myVariableStoredTypeProperty = "Bla"
MyClass2.myVariableStoredTypeProperty
