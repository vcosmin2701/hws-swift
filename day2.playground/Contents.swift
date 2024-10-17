import Foundation

//------------Arrays----------------

var scores = Array<Int>()
scores.append(100)
scores.append(80)
print(scores)

func countTeams(teams: [String]) {
    print("Current count of F1 teams: \(teams.count)")
}

var teams = ["RedBull", "McLaren", "Ferrari", "Aston Martin"]

countTeams(teams: teams)

teams.append("Alpine")
countTeams(teams: teams)

if teams.contains("RedBull"){
    print("Max Verstappen")
}

var sortedTeams = teams.sorted()
print(sortedTeams)

sortedTeams.remove(at: 0)
print(sortedTeams)

sortedTeams.removeAll()
print(sortedTeams)
countTeams(teams: sortedTeams)

print(teams)

var reversedTeams = teams.reversed()
print(Array(reversedTeams))

//----------Dictionaries--------------

let intern = [
    "name": "Cosmin",
    "job": "iOS Intern",
    "location": "Sibiu"
]

print(intern["name", default: "unknown"])
print(intern["job", default: "unknown"])
print(intern["location", default: "unknown"])

// Explicit types for dictionary

var teamChampionshipWins = [String: Int]()
teamChampionshipWins["RedBull"] = 3
teamChampionshipWins["McLaren"] = 1


//----------Sets-------------------------

let devices = Set([
    "MacBook Pro 16",
    "iPhone Xs"
])

print(devices)

var animals = Set<String>()
animals.insert("Dog")
animals.insert("Chinchilla")
animals.insert("Dog")

print(animals)


// --------Enums--------------------------

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.friday
day = .thursday
print(day)
