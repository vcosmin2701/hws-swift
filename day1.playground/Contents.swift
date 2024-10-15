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
