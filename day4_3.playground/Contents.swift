import Foundation

// -- Optionals --

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

// nil -> absence of any type at all

// if exists, let marioOpposite to be the value of the key Mario
// if let -> true -> then
if let marioOpposite = opposites["Mario"] {
    print("Mario's oppossite is \(marioOpposite)")
}

// if there's no ? follwing the type, this means we are really sure
// that there will indeed a string any time

var username: String? = "cosmo"
if let unwrappedName = username {
    print("We got a freak: \(unwrappedName)")
} else {
    print("The optional was empty")
}


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil // this is not unwrapped
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
} else {
    print("No number found at all")
}

// ----- unwrap optionals with guard ---------

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

var num: Int? = 3
printSquare(of: num)

var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value")
//}

func addScore(addWith points: Int?) {
    guard let pointsAdd = points else {
        print("No score to add")
        return
    }
    print("\(pointsAdd) points will be added to the score")
}

addScore(addWith: nil)

// nil coalescing

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
print(new)

//let tvShows = [String]()
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]

for _ in 1...20 {
    let favorite = tvShows.randomElement() ?? "None"
    print(favorite)
}

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let num1 = Int(input) ?? 0
print(num1)

// Optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

var book1: Book? = nil
let author1 = book1?.author?.first?.uppercased() ?? "A"
print(author1)
