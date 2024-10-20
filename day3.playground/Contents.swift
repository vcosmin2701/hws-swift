import Foundation

// Closures

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser // in this way we are creating a copy of greetUser
greetUser()

// --------- The simple way using closure ----------


// Closure as anonymous function
let sayHello = {
    print("Hi there!!")
}

sayHello()

// Closure with parameter

let sayHelloParam = { (name: String) -> String in
    "Hi \(name)!"
}

// in keyword marks the end of the parameter and return type
// everything after the in keyword is the closure body itself

sayHelloParam("Cosmo")

// var greetCopy: () -> Void = greetUser
// function that takes no parameter, and return nothing -> Void

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Ozn"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

// external parameter name matters only when we call directly a function, and not for closures
// or a copy of a function


// Sorted example\

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// Function passed into another function
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// Closures can be passed inside another function

let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam1)
