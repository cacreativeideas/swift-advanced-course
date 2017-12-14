import UIKit

struct FoodItem {
    
    //Nested Type - Enum
    enum FoodGroup {
        case Fruits
        case Vegetables
        case Meats
        case Dairy
        case Grains
    }
    
    //Nested Type - Class
    class TestClass {
        var prop: String
        
        init(prop: String){
            self.prop = prop
        }
        
        static func printText(inputText: String){
            print("\(inputText)")
        }
        
        func show(inputText: String){
            print("\(inputText)")
        }
    }
    
    var name: String
    var group: FoodGroup
    var test: TestClass
    
    init(name: String, group: FoodGroup, test: TestClass) {
        self.name = name
        self.group = group
        self.test = test
    }
}

FoodItem.TestClass.printText(inputText: "teste 1")

var teste = FoodItem.TestClass.init(prop: "teste")
teste.show(inputText: "teste 2")

//How to use a nested type in this example: FoodItem.FoodGroup
let apple = FoodItem(name: "apple", group: FoodItem.FoodGroup.Fruits, test: FoodItem.TestClass(prop: "teste"))
let banana = FoodItem(name: "banana", group: .Fruits, test: FoodItem.TestClass(prop: "teste"))
