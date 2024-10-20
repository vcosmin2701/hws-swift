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

// ------- Trailing closures---------
      
// If the function sorted(by: ) -> accepts two strings and returns a bool
// we can easily delele the types of the parameters and also the type returned

let captainFirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne" {
        return true
    }
    
    return name1 < name2
}

// ------- Shorthand syntax ----------

let captainFirstTeam3 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted { return $0 > $1 }

// Filter
// What does the filter method do?
// Let us run some code on every item in the array, and will send back a new array containing
// every item that returns true for the function

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

// Map
// What does the map method do ?
// map let us to transform every item in the array using some code of out choosing
// and sends back a new array with all the transformed items

let uppercasedTeam = team.map { $0.uppercased() }
print(uppercasedTeam)


// Functions as parameters

// function that takes an int and a function that returns an int as parameter and takes no parameter itself
// and the entire function returns an array of int

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// Multiple functions parameters

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

// another example of trailling closure

doImportantWork {
    print("This is the first work!")
} second: {
    print("This is the second work!")
} third: {
    print("This is the third work!")
}


// Checkpoint 5

// Filter out any numbers that are even ( delete them )
// Sort the array in descending order
// Map them to the specified format: \(number) is a lucky number
// Print the resulting array, one item per line

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddNumbers = luckyNumbers.sorted {
    return $0 < $1
}.filter {
    return !$0.isMultiple(of: 2)
}.map {
    return "\($0) is a lucky number"
}

for number in oddNumbers {
    print(number)
}
