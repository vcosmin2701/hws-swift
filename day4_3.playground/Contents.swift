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
