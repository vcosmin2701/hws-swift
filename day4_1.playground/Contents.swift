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

// ------ Copy classes ---------

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username, user2.username)

// ---- Deinitializer -------

class User2 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead..")
    }
}

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control")
}

var users = [User2]()

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is clear!")


// ----- Variables inside classes ---------

class Mac {
    var name = "MacBook"
}

let mac = Mac() // does not affect if the object itself is an object
mac.name = "MacBook Pro 14"
print(mac.name)

// ------ Checkpoint-8 ---------

// Parent class
class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Hamm Hammm")
    }
}

class Cat: Animal {
    var isTamed: Bool
    
    init(isTamed: Bool) {
        self.isTamed = isTamed
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow Meow")
    }
}

class Corgi: Dog {
    override func speak(){
        print("HaaaammmHaaaammm")
    }
}

class Poodle: Dog {
    override func speak(){
        print("Woff wOFF")
    }
}

class Persian: Cat {
    override func speak(){
        print("Prrrr...Meoww")
    }
}

class Lion: Cat {
    override func speak(){
        print("Roarrr")
    }
}


var cat = Persian(isTamed: true)
print(cat.isTamed, cat.legs)
