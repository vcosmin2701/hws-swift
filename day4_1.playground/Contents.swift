import Foundation

// Classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// Inheritance

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I work \(hours) hours a day cuz I'm a developer")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let cosmo = Developer(hours: 8)
let jojo = Manager(hours: 10)
let pufarina = Developer(hours: 2)

cosmo.work()
jojo.work()
pufarina.printSummary()

// ---- Initializers for classes -------

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
//    init(isConvertible: Bool){
//        self.isConvertible = isConvertible
//    } this will not compile
    
    init(isElectric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
