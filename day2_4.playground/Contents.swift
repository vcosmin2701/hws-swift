import Foundation


//------Functions--------
func showWelcome() {
    print("Welcome to Agile Freaks!!")
    print("The greatest place :D")
}

for _ in 1...10 {
    showWelcome()
}

// parameter
// the signature of the function is important

func printTimesTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

// arguments
printTimesTables(number: 10, end: 20)


// ------ Return values from functions

let root = sqrt(169)
print(root)

print("ceva")

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// Exercise

func sameLetters(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

print(sameLetters(string1: "car", string2: "rac"))

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

// ----- Return multiple values from functions -------

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Cosmo", lastName: "27")
    // ("Cosmo", "27")
}

// let user = getUser()
let (first, last) = getUser()
let (f, _) = getUser() // if just one thing is needed from the return of function


