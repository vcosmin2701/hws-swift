import Foundation

// --------Variables & Constants-------------------

var businessName = "Agile"
businessName = "Agile Freaks"

print(businessName)

let bestTeam = "iOS Team"
// bestTeam = "error" -> this will cause an error

// --------------------Strings-------------------

let firstDay = """
I started learning Swift
I'm iOS Intern now :D
"""

print(firstDay)

// length of the string
print(firstDay.count)

// check if the string starts with some sequence of characters
print(firstDay.hasPrefix("I st"))

// check if the string ends with some sequence of characters
print(firstDay.hasSuffix("amazing"))

// ------------------Numbers-----------------------

let points = 1000
let mageWinPoints = 1_000_000

// Basic math operations
let higherScore = points + 1000
let doubledScore = points * 2
let squaredScore = points * points
let halvedScore = points / 2

// short-hand operations
var count = 10
count += 5
count *= 5
count /= 10
count -= 2

// Check if a number is multiple of another number
let number = 120
print(number.isMultiple(of: 4))

// decimal numbers, aka floating point

let a = 1
let b = 2.0
// let c = a + b -> error: can't mix int with double
let c = Double(a) + b
print(c)

// Booleans
var internshipStartedStatus = false
internshipStartedStatus.toggle()

print("Has internship started ? -> Status: \(internshipStartedStatus)")
