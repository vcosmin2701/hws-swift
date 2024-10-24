import Foundation

// ----- Structs ---------

// Struct example

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

// Another struct when you want to change something

struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacantion")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Ooops! There aren't enough days remaining")
        }
    }
}

var archer = Employee(name: "Sterling Archer")
archer.takeVacation(days: 5)
print(archer.vacationRemaining)


struct Employee1 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer1 = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer1.vacationTaken += 4
print(archer1.vacationRemaining)

archer1.vacationRemaining = 5
print(archer1.vacationAllocated)

// --------- Property observers ----------------


struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()

game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Cosmo")
app.contacts.append("Alieno")
app.contacts.append("Ish")


// ------Custom initializers------

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Matiz")
print(player.number)


// [Day11] ----- Limit access to internal data

struct BankAccount {
    private var funds = 0
    
    // public
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    // public
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

var status: () = success ? print("Withdrew money successfully") : print("Failed to get the money")

//account.funds -= 1000
//print(account.funds)

// [Day11] --------- Static properties and methods

struct School {
    @MainActor static var studentCount = 0
    
    @MainActor static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Matiz")
print(School.studentCount)

// Examples where static properties are used

// shared values across the app
struct AppData {
    static let version = "1.3 beta 3"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.af.com"
}

// example of current struct

struct Employee2 {
    let username: String
    let password: String
    
    static let example = Employee2(username: "cfr", password: "tooSlow2024")
}

// Checkpoint-6

enum GearBox {
    case upshift, downshift
}

struct Car {
    let model: String
    let numOfSeats: Int
    var currentGear: Int = 0
    
    mutating func changeGears(shift: GearBox) {
        switch shift {
        case .upshift:
            if currentGear < 10 {
                currentGear += 1
                print("Upshifted. Current gear: \(currentGear)")
            } else {
                print("Maximum gears reached, please downshift.")
            }
        case .downshift:
            if currentGear > 0 {
                currentGear -= 1
                print("Downshifted. Current gear: \(currentGear)")
            } else {
                print("Neutral has been reached, please upshift.")
            }
        }
    }
}

var car1 = Car(model: "Turbo S 911", numOfSeats: 2)

for _ in 1...11 {
    car1.changeGears(shift: .upshift)
}

for _ in 1...11 {
    car1.changeGears(shift: .downshift)
}


