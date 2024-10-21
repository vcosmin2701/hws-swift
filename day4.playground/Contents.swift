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

