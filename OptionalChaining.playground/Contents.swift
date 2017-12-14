import Foundation

struct Engine {
    var numCylinders: Int
    var maxHorsePower: Int
}

struct Car {
    var make: String
    var model: String
    var color: String
    var engine: Engine?
}

let myRealCar = Car(make: "Audi", model: "A6", color: "black", engine: Engine(numCylinders: 6, maxHorsePower: 300))

let myToyCar = Car(make: "HotWheels", model: "Fireworks", color: "White", engine: nil)

//optional chaining
let carCyl1 = myRealCar.engine?.numCylinders
let carCyl2 = myToyCar.engine?.numCylinders

//OU

class Motorcycle {
    var make: String
    var model: String
    var color: String
    var engine: Engine?
    
    init(make: String, model: String, color: String){
        self.make = make
        self.model = model
        self.color = color
    }
    
    init(make: String, model: String, color: String, engine: Engine){
        self.make = make
        self.model = model
        self.color = color
        self.engine = engine
    }
}

let myRealMotorcycle = Motorcycle(make: "Vespa", model: "Sprint 150", color: "Red", engine: Engine(numCylinders: 1, maxHorsePower: 150))
let myToyMotorcycle = Motorcycle(make: "Harley Davidson", model: "2017", color: "Black")

myRealMotorcycle.make

//optional chaining
let cyl1 = myRealMotorcycle.engine?.numCylinders
let cyl2 = myToyMotorcycle.engine?.numCylinders

