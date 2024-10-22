import Foundation

// Protocols
// protocols -> contracts

// minimum functionality
protocol Vehicle {
//    var name: String { get }
//    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof(){
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("To slowwww, try different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

// ----- Opaque return types -------

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random() // true or false
}

// print(getRandomNumber() == getRandomBool())

// Extensions

var quote = "   The truth is rarely pure and never simple   "

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

// global function
func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed = quote.trimmed()

let guests = ["Mario", "Luigi", "Peach"]


extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}


protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let cosmo = Employee(name: "Cosmo")
cosmo.sayHello()

// Checkpoint-8

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var name: String { get }
    func printSummary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSummary() {
        print("House: \(rooms), \(cost)$, \(name)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSummary() {
        print("Office: \(rooms), \(cost)$, \(name)")
    }
}

let house1 = House(rooms: 4, cost: 500000, name: "John Doe")
let office1 = Office(rooms: 10, cost: 1200000, name: "Jane Smith")

house1.printSummary()
office1.printSummary()


