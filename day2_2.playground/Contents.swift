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

// -------- Switch statement -----------

enum Weather {
    case sun, rain, wind, snow
}

var forecast: Weather = .sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("University is closed, free time.")
}


var animal = "Chinchilla"

switch animal {
case "Chinchilla":
    print("Stitch")
    fallthrough
case "Dog":
    print("It can bark")
    fallthrough
default:
    print("Something cause it to be like this")
}
