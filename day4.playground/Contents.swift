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
    var vacantionRemaining: Int = 14
    mutating func takeVacantion(days: Int) {
        if vacantionRemaining > days {
            vacantionRemaining -= days
            print("I'm going on vacantion")
            print("Days remaining: \(vacantionRemaining)")
        } else {
            print("Ooops! There aren't enough days remaining")
        }
    }
}

var archer = Employee(name: "Sterling Archer")
archer.takeVacantion(days: 5)
print(archer.vacantionRemaining)
