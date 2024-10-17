import Foundation

// ------- Conditions if-else if-else --------

enum Vehicle {
    case car, bike, motorcycle
}

let transport = Vehicle.motorcycle

if transport == .bike {
    print("Let's go for a ride outside")
} else if transport == .motorcycle {
    print("Do a wheelie...")
} else {
    print("I think you can go with a car or walk")
}





