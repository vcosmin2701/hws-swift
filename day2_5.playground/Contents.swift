import Foundation

// ------- Default values for parameters ---------


func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var animals = ["Stitch", "Pufarina", "Marty"]
print(animals.count)
animals.removeAll(keepingCapacity: true)
print(animals.count)

// ------ Handle errors in functions

// 1. definde all the errors that might happen
// 2. write a function that flag up errors if they happen
// 3. call the function


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let result = try checkPassword("12345")
    print("Passowrd rating: \(result)")
} catch PasswordError.obvious {
    print("Too obvious")
} catch {
    print("thERre is an error: \(error.localizedDescription)")
}


// ------CHECKPOINT 4--------------


enum Errors: Error {
    case outOfRange, noRoot
}

func customSquareRoot(number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw Errors.outOfRange
    } else if number >= 1 && number <= 10_000{
        return Int(pow(Double(number), 1/2))
    } else {
        throw Errors.noRoot
    }
}

do {
    let result = try customSquareRoot(number: 169)
    print(result)
} catch {
    print(error)
}
